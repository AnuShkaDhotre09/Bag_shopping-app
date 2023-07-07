import 'package:flutter/material.dart';

import 'Home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/looggo.png"),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),

              child: Text("Nush",
              style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 50),textAlign: TextAlign.center,),
            ),
           SizedBox(height: 10,),
            InkWell(onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
            },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80,vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.orange,
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
