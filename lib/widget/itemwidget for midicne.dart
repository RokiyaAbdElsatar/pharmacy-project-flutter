


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/Itemmodel.dart';
import '../funcations/BuyMassageFunc.dart';
class ItemWidgetmidice extends StatelessWidget {
  ItemWidgetmidice({super.key});
  void _showDialog(BuildContext context) {
    showCustomDialog(context);
  }
  final List<ItemModel> img = const [
    ItemModel(
      text1: 'Alphintern',
      image: 'assets/midicine/aphenter.jpeg',
      text2: "Enzyme replacement therapy indicated in conditions of severe acute inflammation.",
      text3: "55 EP",

    ),
    ItemModel(
      text1: 'Hibiotic 1000',
      image: 'assets/midicine/hybotic.jpg',
      text2: "Antibiotic, belongs to the penicillin group used in the treatment of bacterial rhinosinusitis, pneumonia, otitis media, prophylaxis or treatment against bite wound infection, diabetic foot infection, odontogenic infection and urinary tract infection.",
      text3: "51 EP",
    ),
    ItemModel(
      text1: 'Concor Plus 5',
      image: 'assets/midicine/concor.png',
      text2: "Beta-1 Blocker and thiazide diuretic combination therapy used in the treatment of hypertension.",
      text3: "130 EP",
    ),
    ItemModel(
      text1: 'Amosar 50mg ',
      image: 'assets/midicine/amosor2.jpeg',
      text2: "Angiotensin II receptor blocker used in the treatment of chronic hypertension, acute coronary syndrome, heart failure with reduced ejection fraction and chronic proteinuric kidney disease.",
      text3: "51 EP",
    ),
    ItemModel(
      text1: 'Aspirin Protect 100mg',
      image: 'assets/midicine/sprren.jpeg',
      text2: "Nonsteroidal Anti-inflammatory Drug used in the treatment of acute coronary syndrome, primary and secondary prevention of atherosclerotic cardiovascular diseases, prevention of preeclampsia and used in the prophylaxis against venous thromboembolism.",
      text3: " 21EP",
    ),
    ItemModel(
      text1: 'Hydrocortisone Sodium succinate',
      image: 'assets/midicine/hydrocotizon.jpeg',
      text2: "Sterile powder for reconstitution",
      text3: "17 EP",
    ),
    ItemModel(
      text1: 'Coversyl 5mg',
      image: 'assets/midicine/coversel.jpeg',
      text2: "Angiotensin-Converting Enzyme (ACE) inhibitor used in the treatment of chronic hypertension, heart failure with reduced ejection fraction and stable coronary artery disease.",
      text3: "88",
    ),
    ItemModel(
      text1: 'Corasore 150',
      image: 'assets/midicine/corsor.webp',
      text2: "For the management of Hypotension. Dosage: 25 drops 2-6 times daily or as prescribed by your physician.",
      text3: "12 EP",
    ),

  ];
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
                        Text(img[i].text1,
                          style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                          ,),),
                        Text(img[i].text2,
                            style: TextStyle(fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff3C5B6F)
                        ))],
                    ),
                  ),),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Text(img[i].text3,
                        style: TextStyle(fontSize:18,
                        fontWeight: FontWeight.w500,
                            color: Colors.blue),),
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
