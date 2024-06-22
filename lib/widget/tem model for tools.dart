
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/Itemmodel.dart';
import '../funcations/BuyMassageFunc.dart';
class ItemWidgettools extends StatelessWidget {
  ItemWidgettools({super.key});
  final List<ItemModel> img = const [
    ItemModel(
      text1: 'Mercury thermometer',
      image: 'assets/Tools/measure temperature.jpeg',
      text2: "A mercury thermometer is used to measure body temperature",
      text3: "36 EP",

    ),
    ItemModel(
      text1: 'Digital thermometer',
      image: 'assets/Tools/digital.webp',
      text2: "A mercury thermometer is used to measure body temperature",
      text3: "75 EP",
    ),
    ItemModel(
      text1: 'Mercury blood pressure device',
      image: 'assets/Tools/جهاز ضغط بالزئبق.webp',
      text2: "To measure pressure with greater accuracy",
      text3: "880 EP",
    ),
    ItemModel(
      text1: 'ROSSMAX NEBULIZER NE100',
      image: 'assets/Tools/جهاز استنشاق.jpeg',
      text2: "It is used to improve the management and treatment of asthma, COPD and other respiratory diseases",
      text3: "880 EP",
    ),
    ItemModel(
      text1: 'blood suger test',
      image: 'assets/Tools/جهاز للسكر.jpg',
      text2: "Sugar measuring device",
      text3: " 285EP",
    ),
    ItemModel(
      text1: 'Ankle sprain ',
      image: 'assets/Tools/للقدم.webp',
      text2: "It is used in a bandage for support in cases of foot sprains and strains",
      text3: "56 EP",
    ),
    ItemModel(
      text1: 'cotton',
      image: 'assets/Tools/قطن.webp',
      text2: "Liquids are placed on cotton to be used for cleaning wounds, skin and surfaces.",
      text3: "18",
    ),
    ItemModel(
      text1: 'Hand compression strap',
      image: 'assets/Tools/يد.jpg',
      text2: "It is used in a bandage for support in cases of hand sprains and strains",
      text3: "54 EP",
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
