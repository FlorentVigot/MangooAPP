import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

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
              ListTitle(),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ListView(
                  scrollDirection: Axis.vertical,

                  children: [
                    ListTile(
                      title: Text('Choisissez votre base de salade',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      )
                    ),
                    ListTile(
                      title: Text('epinard , iceberg, Mâche, Pates , Pâtes & RoquetteQuinoaQuinoa & EpinardsRoquette ,Carotte & Courgette'),
                    ),
                    const Divider(),
                    ListTile(
                        title: Text('Choisissez vos ingrédients verts',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )
                    ),
                    ListTile(
                      title: Text('epinard , iceberg, Mâche, Pates , Pâtes & RoquetteQuinoaQuinoa & EpinardsRoquette ,Carotte & Courgette'),
                    ),
                    const Divider(),ListTile(
                        title: Text('Choisissez vos ingrédients bleus',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )
                    ),
                    ListTile(
                      title: Text('epinard , iceberg, Mâche, Pates , Pâtes & RoquetteQuinoaQuinoa & EpinardsRoquette ,Carotte & Courgette'),
                    ),
                    const Divider(),
                    ListTile(
                        title: Text('Choisissez votre boisson',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )
                    ),
                    ListTile(
                      title: Text('epinard , iceberg, Mâche, Pates , Pâtes & RoquetteQuinoaQuinoa & EpinardsRoquette ,Carotte & Courgette'),
                    ),
                    const Divider(),
                    ListTile(
                        title: Text('Choisissez votre dessert',
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )
                    ),
                    ListTile(
                      title: Text('epinard , iceberg, Mâche, Pates , Pâtes & RoquetteQuinoaQuinoa & EpinardsRoquette ,Carotte & Courgette'),
                    ),

                  ],
                ),
              ),
            ],
          )
      ),

    );
  }
}

class ListTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            child: Text("Liste des denrées",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
              ),
          ),
        ),
      ],
    );
  }
}
