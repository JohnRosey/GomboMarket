import 'package:flutter/material.dart';
class Produits_panier extends StatefulWidget {
  @override
  _Produits_panierState createState() => _Produits_panierState();
}

class _Produits_panierState extends State<Produits_panier> {
  var Produit_du_panier=[

    { "name":"Costume Freeium",
      "picture":"images/produits/6.jpg",
      "price": 120,
      "size":"M",
      "color":"Red",
      "quantity":15,

    },
    { "name":"Costume premium",
      "picture":"images/produits/7.jpg",
      "price": 120,
      "size":"M",
      "color":"Yellow",
      "quantity":12,


    },


  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Produit_du_panier.length,
      itemBuilder: (context,index){
        return Produit_panier_seul(
            panier_prod_name:Produit_du_panier[index]["name"],
          panier_prod_color:Produit_du_panier[index]["color"],
          panier_prod_qty:Produit_du_panier[index]["quantity"],
          panier_prod_size:Produit_du_panier[index]["size"],
          panier_prod_price:Produit_du_panier[index]["price"],
          panier_prod_picture:Produit_du_panier[index]["picture"],


        );
      }
    );
  }
}
class  Produit_panier_seul extends StatelessWidget {
  final panier_prod_name;
  final panier_prod_picture;
  final panier_prod_price;
  final panier_prod_color;
  final panier_prod_size;
  final panier_prod_qty;

   Produit_panier_seul({ this.panier_prod_name,
     this.panier_prod_picture,
     this.panier_prod_price,
     this.panier_prod_color,
     this.panier_prod_size,
     this.panier_prod_qty}) ;


  /*@override
  Widget build(BuildContext context) {
    return Card(
      child:ListTile(
        //=====LEADING SECTION======
        leading: new Image.asset(panier_prod_picture,width: 100.0,
        height: 80.0,),


        // ====SECTION TITRE=====
        title:new Text(panier_prod_name),

        //=======SUBTITLE SECTION=======
        subtitle:new Column(
          children:<Widget>[
            // ROW INSIDE THE COLUMN
        new Row(
        children:<Widget>[
          //      =======Cette section est pour a taille des produits==========

            Padding(padding: const EdgeInsets.all(8.0),
            child:new Text("Taille"),
            ),
          Padding(padding: const EdgeInsets.all(8.0),
            child:new Text(panier_prod_size,style:  TextStyle(color: Colors.red),),
          ),

          //    ==========Cette section est pour La couleur=======
            new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
              child:new Text("Couleur"),),
          Padding(padding: const EdgeInsets.all(4.0),
            child:new Text(panier_prod_color,style:  TextStyle(color: Colors.red),),
          ),
        ],
    ),

// =======//Cette section est pour Les prix des produits==========
new Container(
  alignment: Alignment.topLeft,
  child: new Text(
    "\$${panier_prod_price}",
    style: TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.bold,
      color: Colors.red
    ),
  ),
),
  ],
        ),

trailing: new Column(

  children: <Widget>[

    new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
    new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),


  ],

),
        ),
      );

  }*/
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        height: 80,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.asset(panier_prod_picture, width: 50.0, height: 50.0),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      panier_prod_name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${panier_prod_price}",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Couleur",
                    ),
                    Text(
                      panier_prod_color,

                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "taille",
                    ),
                    Text(
                      panier_prod_size,
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_drop_up), onPressed: () {})),
                    new Text("$panier_prod_qty"),
                    Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            onPressed: () {}))
                  ],
                ),
              )
            ]),
      ),
    );

  }

}


