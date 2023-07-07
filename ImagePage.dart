import 'package:flutter/material.dart';
import 'package:nush_clothing_brand/Screen/i1.dart';

import '../Home.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xFF356C95),
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
                    child: Text("Aristrocratic Hand Bag",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Office Code",
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
            child: Text("\$250",style: TextStyle(
              color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold
            ),),
          ),
        ],)
        ),
          
        ),
       Container(
         child: Image.asset("assets/bag_1.png"),
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

itemWidget()

    ],
    ),
    )

    ],
      ),
    );
  }
}
