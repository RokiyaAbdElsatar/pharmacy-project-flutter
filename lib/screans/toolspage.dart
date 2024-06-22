import 'package:flutter/material.dart';
import '../widget/tem model for tools.dart';

class toolspage  extends StatelessWidget {
  const toolspage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff4f7bce),
      body:
      ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:Color(0xff6b97e4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Find Your medical tool",
                hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5)),
                prefixIcon: Icon(
                    Icons.search,
                    size:30,
                    color: Colors.white.withOpacity(0.5)

                ),
              )
              ),),
          ),
          SizedBox(height: 15,),

          ItemWidgettools(),
          ItemWidgettools(),
          ItemWidgettools(),
          ItemWidgettools(),
          ItemWidgettools(),
          ItemWidgettools(),










        ],
      ) ,


    ) ;
  }
}
