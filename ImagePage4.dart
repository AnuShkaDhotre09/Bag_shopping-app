import 'package:flutter/material.dart';
import 'package:nush_clothing_brand/Screen/i1.dart';

import '../Home.dart';
import '../Screen/i6.dart';

class ImagePage4 extends StatefulWidget {
  const ImagePage4({super.key});

  @override
  State<ImagePage4> createState() => _ImagePage4State();
}

class _ImagePage4State extends State<ImagePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xFFFB7883),
      appBar: AppBar(
         backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder:(context)=>Home()));  },
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(

                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10,left: 20),
                    child: Text("Fruitrocratic Hand Bag",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Fruity Bag",
                    style: TextStyle(color: Colors.white,fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),


              ],

            ),
          ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Container(
            child: Column(
          children: [

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Price",
            style: TextStyle(color: Colors.white,
            fontSize: 15),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("\$950",style: TextStyle(
              color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold
            ),),
          ),
        ],)
        ),
          
        ),
       Container(
         child: Image.asset("assets/bag_5.png",
         height: 200,width: 200,),
       )
      ],
    ),


    Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30)
    )
    ),

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

item6Widget()

    ],
    ),
    )

    ],
      ),
    );
  }
}
