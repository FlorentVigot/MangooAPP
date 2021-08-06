import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;
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
            MongooTitle(),
            //MongooImage(),
            //SaladeImage(),
            //SaladeTitle(),
          ],
        )
      ),

    );
  }
}

// Mongoo Title
class MongooTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        SizedBox(
        width: double.infinity,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
            'MONGO0 : C\'est frais pour vous !',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
            textAlign: TextAlign.right,
      ),
          ),

    ),

    ),
          Image.network('https://as2.ftcdn.net/v2/jpg/00/53/59/03/500_F_53590332_GktsdggabKrEv4a3URfSalFHofBoFOqL.jpg',
            height: 150,
            width: 150,
            fit: BoxFit.cover,)
    ],
    );
  }
}
// Mongoo image
class MongooImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        child: Image.network('https://as2.ftcdn.net/v2/jpg/00/53/59/03/500_F_53590332_GktsdggabKrEv4a3URfSalFHofBoFOqL.jpg',
      height: 150,
      width: 150,
      fit: BoxFit.cover,)
    );
  }
}
// Salade Title
class SaladeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
        padding: EdgeInsets.symmetric(
        vertical: 10.0,
    ),

        child: Text(
        "oui",
        style: TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.w700,
    ),
    textAlign: TextAlign.center,
    ),
    ),
    );
  }
}
// Salade image
class SaladeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network("https://as2.ftcdn.net/v2/jpg/01/89/90/29/500_F_189902957_NzbLZ8aOriQRtFdDSl4vOg8qCNITNsBb.jpg"),
    );
  }
}



// Salade Description
class SaladeDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30.0,
      color: Colors.yellow,
    );
  }
}


