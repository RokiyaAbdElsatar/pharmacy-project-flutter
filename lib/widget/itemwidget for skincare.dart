
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/Itemmodel.dart';
import '../funcations/BuyMassageFunc.dart';
class ItemWidgetskin extends StatelessWidget {
  final List<ItemModel> img = const [
    ItemModel(
      text1: 'Bobai Hydrocare Sunscreen',
      image: 'assets/skincarepage/Bobai Hydrocare Sunscreen.png',
      text2: "Protection from sunlight",
      text3: "220 EP",

    ),
    ItemModel(
      text1: 'Eva Sun & Sea Daily',
      image: 'assets/skincarepage/eva sun block.jpeg',
      text2: "Protection from sunlight",
      text3: "115 EP",
    ),
    ItemModel(
      text1: 'La Roche Posay Effaclar Foaming',
      image: 'assets/skincarepage/larog.jpg',
      text2: "Ideal for sensitive skin and/or skin prone to sun intolerance, commonly known as sun allergies. Suitable even for extreme sunshine intensity. Effectively prevents sun-induced pigment spots.",
      text3: "589 EP",
    ),
    ItemModel(
      text1: 'La Roche Posay Effaclar Foaming',
      image: 'assets/skincarepage/La Roche Posay Effaclar Foaming.jpeg',
      text2: "Gently cleanses the skin thanks to its high tolerance foaming power. Lifts dirt, grime and sebum away from the surface of the skin without disrupting its delicate balance.",
      text3: "329 EP",
    ),
    ItemModel(
      text1: 'Nivea Soft Moisturizing Cream',
      image: 'assets/skincarepage/Nivea Soft Moisturizing Cream.png',
      text2: "Soft Moisturizing Cream 100 ML",
      text3: " 50EP",
    ),
    ItemModel(
      text1: 'Garnier Skin ',
      image: 'assets/skincarepage/genier.webp',
      text2: "Naturals Light Complete Scrub 100 ML",
      text3: "55 EP",
    ),
    ItemModel(
      text1: 'Glow & Lovely',
      image: 'assets/skincarepage/fairlovely.jpg',
      text2: "Deep lightening",
      text3: "15",
    ),
    ItemModel(
      text1: 'Starville Vitamin C Serum 30 ML',
      image: 'assets/skincarepage/stravial1.jpg',
      text2: "Starville Vitamin C Serum stimulates the appearance of an even-toned skin and encourages a radiant uniform complexion.Helps address signs of aging and blemished skin as it is enforced with Astra Force Promotes skin lightening",
      text3: "200 EP",
    ),

  ];
  void _showDialog(BuildContext context) {
    showCustomDialog(context);
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for(int i=0; i<img.length;i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,)
                ]
            ),
            child: ListView(

              children: [
                Container(
                    child: Image.asset(img[i].image,
                      width: 500,
                      height: 220,
                      fit:BoxFit.contain,)),
                Padding(padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(img[i].text1,style: TextStyle(fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                          ,),),
                        Text(img[i].text2,style: TextStyle(fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff3C5B6F)
                        ))],
                    ),
                  ),),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [Text(img[i].text3,
                      style: TextStyle(fontSize:18,
                        fontWeight: FontWeight.w500,color: Colors.blue[700]),),
                      Container(

                          child: ElevatedButton.icon(
                              onPressed: (){
                                _showDialog(context);

                              },
                              style: ElevatedButton.styleFrom(
                             primary: Colors.blue[700],

                              ),
                              icon: Icon(
                                CupertinoIcons.shopping_cart,
                                size: 20,),
                              label: Text("Buy")))

                    ],
                  ),)
              ],
            ),

          )
      ],

    );
  }
}
