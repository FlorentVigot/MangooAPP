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
                      title: Text('Epinard, Iceberg, Mâche, Pates, Pâtes & Roquette, Quinoa, Quinoa & Epinards, Roquette, Carotte & Courgette'),
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
                      title: Text('Betterave - Carottes - Céleri* - Champignons - Choux rouges - Concombre - Croûtons - Emmental - Fèves - Jambon blanc - Lentilles - Maïs - Mimolette - Mozzarella - Oeuf - Oignons rouges - Pastèque* - Pois chiches* - Pomme - Poulet - Radis* - Salsifis* - Saucisses* - Soja* - Surimi - Tomates'),
                    ),
                    ListTile(
                      title: Text('* = ingrédients susceptibles de changer en fonction des saisons'),
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
                      title: Text('Ananas* - Anchois* - Asperges* - Avocat - Aubergines* - Brocolis* - Cantal - Chorizo - Cœur d\'artichaut* - Cœur de palmier* - Fourme d\'Ambert* - Gésiers - Grana Panado - Jambon cru - Courgettes* - Crevettes - Dinde marinée - Falafel - Feta - Figues* - Lardons - Melon* - Noix* - Oeufs pochés - Pamplemousse* - Pastrami - Poivrons - Thon - Tomates cerises - Tomates séchées'),
                    ),
                    ListTile(
                      title: Text('* = ingrédients susceptibles de changer en fonction des saisons'),
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
                      title: Text('Vittel, Pure Life, San Pellegrino, Cristaline, Pulco Citron, Appletiser, Minute Maid Orange|Pomme|Tropical, San Pellegrino Citron|Orange|Tropical, Coca-Cola|Coca-cola light|Coca-cola zero, FuzeTea Peche|Mangue',
                      style: TextStyle(
                        color: Colors.purple
                      )),
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
                      title: Text('Les Fruits',
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.w700,
                        fontSize: 15  ,
                      ),),
                    ),
                    ListTile(
                      title: Text('Mangue - Ananas - Kiwi - Fraise - Melon - Figues - Pastèque - Pomme - Orange - Pamplemousse - Salades de fruits'),
                    ),
                    ListTile(
                      title: Text('Les Frais',
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w700,
                          fontSize: 15  ,
                        ),),
                    ),
                    ListTile(
                      title: Text('Yaourt grec :framboise - mangue - crème de marron - poire spéculoos - miel noix pommes . Panna Cotta :framboise - coco - banane - café'),
                    ),ListTile(
                      title: Text('Les Gourmands',
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w700,
                          fontSize: 15  ,
                        ),),
                    ),
                    ListTile(
                      title: Text('Crumble fruits rouges - Fondant au chocolats - Brownie & Crème anglaise - Petits cannelés - Riz au lait & confiture de lait   '),
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
