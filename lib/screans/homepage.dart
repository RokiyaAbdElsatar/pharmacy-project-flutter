import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacy_project/screans/panadol.dart';
import 'package:pharmacy_project/screans/skincare.dart';
import 'package:pharmacy_project/screans/stripss.dart';
import 'package:pharmacy_project/screans/toolspage.dart';
import 'package:pharmacy_project/screans/vatimen.dart';
import '../components/model for home page .dart';
import '../funcations/funcation1.dart';
import 'BUBBULE.dart';
import 'chalpas.dart';
import 'midicine.dart';
import 'on.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> iconsbar =[
      Icon(
        Icons.home,
        size: 30,
        color: Color(0xffEDF6FD),
      ),
      Icon(
        Icons.shopping_cart,
        size: 30,
        color: Color(0xffEDF6FD),
      ),
      Icon(
        Icons.favorite,
        size: 30,
        color: Color(0xffEDF6FD),
      ),
      Icon(
        Icons.settings,
        size: 30,
        color: Color(0xffEDF6FD),
      ),

    ];

    return Scaffold(
      // extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          color: Color(0xff1C82CB),
          backgroundColor: Colors.white,
          items:iconsbar,
          height: 68,
        ),
        body: Stack(
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  height: 260,
                  color: Color(0xff1C82CB),
                ),
              ),
              Container(
                  child: ListView(
                    children: [
                      Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:45),
                              child: Image(
                                  image: AssetImage(
                                      'assets/top home/bg.png',
                                  ),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 20,bottom: 10),
                                      child: Text(
                                        "Category",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                            fontFamily: 'Poppins'

                                        ),),
                                    )],),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return const medicinepage();
                                            }));
                                          },
                                          child:
                                              Image.asset(
                                                'assets/top home/medicine.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // تحديد حجم الزوايا للمربع
                                            ),
                                            padding: EdgeInsets.all(20), // تحديد الهامش الداخلي للزر
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: 15),
                                          child: Text(
                                              "Medicine",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: .5
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        ElevatedButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return const toolspage();
                                            }));
                                          },
                                          child:
                                              Image.asset(
                                                'assets/top home/thermometer_6946428.png',
                                                height: 40,
                                                width: 40,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            padding: EdgeInsets.all(20),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: 15),
                                          child: Text(
                                              "Tools",
                                               style: TextStyle(
                                               fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: .5
                                               ),
                                               ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        ElevatedButton(
                                          onPressed:() {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return const vitemanpage();
                                            }));
                                          },
                                          child:
                                              Image.asset(
                                                'assets/top home/pills_6946469.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // تحديد حجم الزوايا للمربع
                                            ),
                                            padding: EdgeInsets.all(20), // تحديد الهامش الداخلي للزر
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: 15),
                                          child: Text(
                                              "Vitamin",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: .5
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Column(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return const skincarepage();
                                            }));
                                          },
                                          child:
                                              Image.asset(
                                                'assets/top home/facial-mask_9170092.png',
                                                height: 40,
                                                width: 40,
                                              ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // تحديد حجم الزوايا للمربع
                                            ),
                                            padding: EdgeInsets.all(20), // تحديد الهامش الداخلي للزر
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: 15),
                                          child: Text(
                                              "Skin care",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: .5
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                // SizedBox(height: 30),
                                Padding(
                                  padding:  EdgeInsets.only(top: 25),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top:3,left: 20,bottom: 15),
                                        child: Text(
                                          "Products",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                // SizedBox(height: 10),
                                Padding(
                                  padding:  EdgeInsets.only(left: 20,bottom: 10),
                                  child: SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),

                                    scrollDirection: Axis.horizontal,

                                    child: Row(
                                      children: [
                                        ItemTerbaru(
                                          ontap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return  Bubblepage();
                                            }));},

                                          image: "assets/products home/bubles.jpg",
                                        ),
                                        SizedBox(width:18 ,),
                                        ItemTerbaru(
                                          ontap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                            return chAlpa ();
                                          }));},
                                          image: "assets/products home/ch alpa.jpg",
                                        ),
                                        SizedBox(width:18 ,),
                                        ItemTerbaru(
                                          ontap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return  creast();
                                            }));},
                                          image: "assets/products home/creast.jpg",
                                        ),
                                        SizedBox(width:18 ,),
                                        ItemTerbaru(
                                          ontap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                            return pandol();
                                          }));},
                                          image: "assets/products home/panadol.jpg",
                                        ),
                                        SizedBox(width:18 ,),
                                        ItemTerbaru(
                                          ontap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                            return strepsil();
                                          }));},
                                          image: "assets/products home/stripls.jpg",
                                        ),
                                        SizedBox(width:18 ,),

                                      ],
                                    ),
                                  ),
                                ),






                              ]

                              ,
                            ),



                          ]),

                    ], // Stack Children
                  ) ),
            ]

        )
    );

  }
}











