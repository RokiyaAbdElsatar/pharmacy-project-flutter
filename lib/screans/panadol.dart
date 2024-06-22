import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../funcations/BuyMassageFunc.dart';
import '../funcations/funcation3.dart';

class pandol extends StatelessWidget {
  void _showDialog(BuildContext context) {
    showCustomDialog(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Stack(
            children:[
              Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.blue[600]
              ),
            )
              ,Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ClipPath(
                    clipper: CurvedBottomClipper2(),
                    child:  Container(
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/products home/panadol.jpg'), // تستبدل 'assets/image.png' بمسار الصورة الخاصة بك
                          fit: BoxFit.cover,
                        ),
                      ),
                    )

                ),
              ),
              Align(

                alignment: Alignment.bottomCenter,
                child: Container(
                    width:MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height/1.98,
                    child:Padding(
                      padding: EdgeInsets.only(top: 50,left: 25),
                      child: Column(
                        children: [
                        Row(
                          children: [
                            Text("Panadol Cold  " ,
                              style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Poppins'
                              ),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text("Medical Description" ,
                              style:TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Poppins'
                              ),),
                          ],
                        ),
                        SizedBox(height: 10,)
                        ,Row(
                          children: [
                            Text("Decongestant is recommended for relief " ,
                              style:TextStyle(
                                  color: Color(0xff35374B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),),
                          ],
                        )
                        , SizedBox(height: 5,)
                        ,Column(
                          children: [
                            Row(
                              children: [
                                Text("of common cold symptoms including " ,
                                  style:TextStyle(
                                      color: Color(0xff35374B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),  Row(
                              children: [
                                Text("headache,sore throat, nasal  ongestion" ,
                                  style:TextStyle(
                                      color: Color(0xff35374B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Row(
                              children: [
                                Text("and sinusitis, and their associated body   " ,
                                  style:TextStyle(
                                      color: Color(0xff35374B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            Row(
                              children: [
                                Text("pain ,aches and fever",
                                  style:TextStyle(
                                      color: Color(0xff35374B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Row(
                              children: [
                              SizedBox(width: 15,),
                              Text("350EGP",
                              style:TextStyle(
                                  color: Colors.red[700],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),)
                              ,SizedBox(width: 160,),Icon(Icons.star
                                ,color: Colors.yellow,),
                              Icon(Icons.star
                                ,color: Colors.yellow,),
                              Icon(Icons.star
                                ,color: Colors.yellow,),
                              Icon(Icons.star
                                ,color: Colors.yellow,),
                            ],
                            )

                          ],
                        )
                        ,
                        SizedBox(height: 30,)
                        ,Padding(
                          padding:  EdgeInsets.only(right: 20),
                          child: ElevatedButton.icon(
                              onPressed: ()
                          {
                            _showDialog(context);

                          },
                              icon:Icon(
                                  Icons.shopping_cart,
                                color: Colors.blue[700],
                              ) ,
                              label:  Text(
                                  "Buy NOW",
                                style: TextStyle(
                                    color: Colors.blue[700],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Poppins'

                                ),
                              ),
                              style:  ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(350, 55)),
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          side: BorderSide(color: Colors.white)
                                      )
                                  )
                              )
                          ),
                        )],),
                    )),
              )
            ]),
      ),
    );
  }
}

