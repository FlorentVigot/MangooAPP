import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormulaireScreen extends StatefulWidget {
  @override
  _FormulaireScreenState createState() => _FormulaireScreenState();
}

class _FormulaireScreenState extends State<FormulaireScreen> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    final title = 'MANGOO';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title,
        ),
      ),
      body: SizedBox(
          child:Stack(
            children: [
              MangooForms(),
            ],
          )
      ),

    );
  }
}

// Mangoo forms

class MangooForms extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(

        children: <Widget>[
          Text('Faites votre commande !',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
              labelText: 'Votre nom :'
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'S\'il vous plait, entrez du texte';
              }

              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.add_circle),
                labelText: 'Ajouter votre base de salade:'
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'S\'il vous plait, entrez du texte';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.add_circle),
                labelText: 'Ajouter vos Ingrédients vert:'
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'S\'il vous plait, entrez du texte';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.add_circle),
                labelText: 'Ajouter vos Ingrédients bleus:'
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'S\'il vous plait, entrez du texte';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.add_circle),
                labelText: 'Ajouter votre sauce:'
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'S\'il vous plait, entrez du texte';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.add_circle),
                labelText: 'Ajouter un petit plus:'
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'S\'il vous plait, entrez du texte';
              }
              return null;
            },
          ),
        ElevatedButton(
        onPressed: () {
          // Validate returns true if the form is valid, or false otherwise.
          if (_formKey.currentState!.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Commande en cours...')),
            );
          }
        },
        child: const Text('Confirmer la commande'),
      ),
  ])
    );
  }
}
