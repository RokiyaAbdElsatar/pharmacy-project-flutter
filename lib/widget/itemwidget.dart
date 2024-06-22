
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/Itemmodel.dart';
import '../funcations/BuyMassageFunc.dart';
class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});
  final List<ItemModel> img = const [
    ItemModel(
      text1: 'kervoit',
      image: 'assets/vitemen/kervoit.jpg',
      text2: "Used to treat vitamin deficiencies (lack of vitamins) caused by illness, pregnancy, poor nutrition, digestive disorders, and many other conditions.",
      text3: "75 EP",

    ),
    ItemModel(
      text1: 'vidrop',
      image: 'assets/vitemen/vedrop1.jpeg',
      text2: "Vitamin D analog used  prevention of osteoporosis and prevention of rickets in children.",
      text3: "75 EP",
    ),
    ItemModel(
      text1: 'Pravotin',
      image: 'assets/vitemen/pra.jpg',
      text2: "MThis Medicine is most commonly used for low iron levels in women who are pregnant and for preventing blood infection (sepsis) in premature infants.",
      text3: "130 EP",
    ),
    ItemModel(
      text1: 'Neurimax',
      image: 'assets/vitemen/nura.jpg',
      text2: "Used to treat vitamin deficiencies (lack of vitamins) caused by illness, pregnancy, poor nutrition, digestive disorders, and many other conditions.",
      text3: "27 EP",
    ),
    ItemModel(
      text1: 'Limitless woMan',
      image: 'assets/vitemen/limitelss2.jpeg',
      text2: "Multivitamins Dosage: Once daily",
      text3: " 210EP",
    ),
    ItemModel(
      text1: 'Limitless Man',
      image: 'assets/vitemen/limitlex1.jpeg',
      text2: "Multivitamins Dosage: Once daily",
      text3: "210 EP",
    ),
    ItemModel(
      text1: 'Limitless Ossofortin D3',
      image: 'assets/vitemen/vitamin e.jpg',
      text2: "vitmen D Dosage: Once daily",
      text3: "95",
    ),
    ItemModel(
      text1: 'Betolvex',
      image: 'assets/vitemen/betovlex3.jpeg',
      text2: "Vitamin b12 used for the treatment and prevention of vitamin B12 deficiency, treatment of aphthous stomatitis and pernicious anemia.",
      text3: "75 EP",
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
                    children: [Text(img[i].text3,style: TextStyle(fontSize:18,
                        fontWeight: FontWeight.w500,color: Colors.blue),),
                      Container(


                          child: ElevatedButton.icon(
                              onPressed: (){
                                _showDialog(context);

                              },
                              icon: Icon(CupertinoIcons.shopping_cart,size: 20,),
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
