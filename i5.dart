import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart.dart';

class item5Widget extends StatefulWidget {
  const item5Widget({super.key});

  @override
  State<item5Widget> createState() => _item5WidgetState();
}

class _item5WidgetState extends State<item5Widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Colors",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.circle,color:Color(   0xFFAEAEAE),),
                          Icon(Icons.circle,color: Colors.blueAccent,),
                          Icon(Icons.circle,color: Colors.purple,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,right: 80),
                child: Container(
                  child: Column(
                    children: [
                      Text("Size",),
                      Text("21 cm",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              child: Text("lrjuthnm shtrhnbehgn mhm,nvv,.jkldmf, jhf.,mnnkdsljf,MD F JDFNM,sdnfkHSFD HDJSF "
                  "M N JDK FJKNDJFHMNMF, .,mnkfhgjjnm, jamn,fsm,gjkam,fgjka jbas jbja"
                  " banmfs ,mnam,sf, anmdfm,namn,MNMD,Cnnhvvnfhgndm,nd,.NdfIJKNHLN,HJDNJFHA"
                  "mhjmn,mhkfmnm,cnkvm hgfmnbsj JHDfm,nm,dhfcnm,XZ c,jn ><, Read More",
                style: TextStyle(color: Colors.grey),),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child:Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 5),
                        child: Icon(CupertinoIcons.minus_circle,color: Colors.black,
                        size: 20,),
                      ),
                      Text("01",style:TextStyle(color: Colors.black,)),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(CupertinoIcons.plus_circle,color: Colors.black,size: 20,),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(CupertinoIcons.heart_circle_fill,size: 40,color: Colors.pink,),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: Icon(CupertinoIcons.cart,size: 40,
                  color: Color(   0xFFAEAEAE)),
                ),
              ),


    Padding(
    padding: const EdgeInsets.only(top: 10,),
    child:  InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart()));
    },
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 16),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color(   0xFFAEAEAE),
    ),
    child: Text(
    "Buy Now",
    style: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold
    ),

    ),
    ),
    ))

            ],
          ),
        ),

      ],
      
    );
  }
}
