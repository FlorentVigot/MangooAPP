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
            textAlign: TextAlign.center,
      ),
          ),

    ),

    ),
          Image.network('https://static.wixstatic.com/media/108949_682c9b95fc1d49d6bdd1634901957766~mv2.png/v1/fill/w_340,h_116,al_c,q_85,usm_0.66_1.00_0.01/Logo%20Mongoo%20Pictos%202017',
            height: 150,
            width: 450,
            fit: BoxFit.cover),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children:[
                  Text('Salade Buffalo',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                  ),),
              Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/fs/0edcc8100457407.5f09133185cbc.jpg',
                  height: 75,
                  width: 75,
                  fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Jambon - fromage - roquette - sauce césar',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,

                  ),),
                )
                ]

              ),
              Spacer(),
              Column(
                children:[
                  Text('Salade Rocket',
                    style: TextStyle(
                    color: Colors.blueAccent,
                    ),),
              Image.network('https://media-cdn.tripadvisor.com/media/photo-s/04/3b/f8/0a/mongoo.jpg',
                  height: 75,
                  width: 75,
                  fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Roquette - fromage - tomate - oignon - grenade',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,

                      ),),
                  )
                ]

              ),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    children:[
                      Text('Salade Betterave',
                        style: TextStyle(
                          color: Colors.purple,
                        ),),
                      Image.network('https://media-cdn.tripadvisor.com/media/photo-s/04/3b/f7/d2/mongoo.jpg',
                          height: 75,
                          width: 75,
                          fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Betterave - laitue - tomate - féta',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,

                          ),),
                      )
                    ]

                ),
                Spacer(),
                Column(
                    children:[
                      Text('Salade Méditérrannée',
                        style: TextStyle(
                          color: Colors.greenAccent,
                        ),),
                      Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/fs/4e949e110473417.5fedf49ca4926.jpg',
                          height: 75,
                          width: 75,
                          fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Roquette - tomate - concombre - pate - parmesan - olive',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,

                          ),),
                      )
                    ]

                ),
              ],
            ),
          ),

    ],

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


