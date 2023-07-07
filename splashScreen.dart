import 'dart:async';

import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});


  @override


  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override

  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 5),
        ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()))
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset("assets/looggo.png"),
            Text("Nush",
            style: TextStyle(fontSize: 50,color: Colors.orange,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
