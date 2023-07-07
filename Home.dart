import 'package:flutter/material.dart';
import 'package:nush_clothing_brand/slider/slider.dart';
import 'package:nush_clothing_brand/Theme/theme_manager.dart';
import 'DrawerNavigation.dart';
import 'Pages/ImagePage.dart';
import 'Pages/ImagePage1.dart';
import 'Pages/ImagePage2.dart';
import 'Pages/ImagePage3.dart';
import 'Pages/ImagePage4.dart';
import 'Pages/ImagePage5.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
ThemeManager _themeManager=ThemeManager();

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Nush',style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold,

        ),textDirection: TextDirection.ltr,
        ),
        actions: [Switch(value: _themeManager.themeMode==ThemeMode.dark, onChanged: (newValue){
          _themeManager.toogleTheme(newValue);
        })],

      ),

      drawer: DrawerNavigation(),

      body:
      Column(

        children: [
          SliderScreen(),

             Container(
               child: GridView.count(
                   padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 10,
                   crossAxisCount: 2,
                 childAspectRatio: 1.2,
                 shrinkWrap: true,
                 children: [

                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 5),
                         decoration: BoxDecoration(
                           color: Color(0xFF356C95),
                           borderRadius: BorderRadius.circular(20),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black,


                             )
                           ]
                         ),
                         child: Row(
                           children: [
                             InkWell(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>(ImagePage())));
             },
                            child:
                            Container(
                              child: Padding(padding: EdgeInsets.all(5),

                               child: Image.asset("assets/bag_1.png",
                               height: 130,
                               width: 170,),),
                            ),

                           )
                           ],

                         ),


                       ),





                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 5),
                         decoration: BoxDecoration(
                           color: Color(0xFFF8C078),
                           borderRadius: BorderRadius.circular(20),
                           boxShadow: [BoxShadow(
                             color: Colors.black
                           )]
                         ),
                         child: Row(
                           children: [
                             InkWell(
                             onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>(ImagePage1())));
                       },
                             child:Container(
                               child: Padding(padding: EdgeInsets.all(5),
                                 child: Image.asset("assets/bag_2.png",
                                   height: 300,
                                   width: 165,),),
                             ),
                             ),
                           ],
                         ),
                       ),


                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 5),
                     decoration: BoxDecoration(
                         color: Color(0xFFE6B398),
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [BoxShadow(
                             color: Colors.black
                         )]
                     ),
                     child: Row(
                       children: [
                         InkWell(
                         onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>(ImagePage3())));
                   },
                        child: Container(
                           child: Padding(padding: EdgeInsets.all(5),
                             child: Image.asset("assets/bag_4.png",
                               height: 300,
                               width: 170,),),
                         ),),
                       ],
                     ),
                   ),

                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 5),
                     decoration: BoxDecoration(
                         color: Color(0xFF989493),
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [BoxShadow(
                             color: Colors.black
                         )]
                     ),
                     child: Row(
                       children: [
                         InkWell(
                         onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>(ImagePage2())));
                   },
                         child:Container(
                           child: Padding(padding: EdgeInsets.all(5),
                             child: Image.asset("assets/bag_3.png",
                               height: 300,
                               width: 170,),),
                         ))
                       ],
                     ),
                   ),


                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 5),
                     decoration: BoxDecoration(
                         color: Color(   0xFFAEAEAE),
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [BoxShadow(
                             color: Colors.black
                         )]
                     ),
                     child: Row(
                       children: [
                         InkWell(
                         onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>(ImagePage5())));
                   },
                         child:Container(
                           child: Padding(padding: EdgeInsets.all(5),
                             child: Image.asset("assets/bag_6.png",
                               height: 300,
                               width: 170,),),
                         ))
                       ],
                     ),
                   ),



                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 5),
                     decoration: BoxDecoration(
                         color: Color(0xFFFB7883),
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [BoxShadow(
                             color: Colors.black
                         )]
                     ),
                     child: Row(
                       children: [
                         InkWell(
                         onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>(ImagePage4())));
                   },
                         child:Container(
                           child: Padding(padding: EdgeInsets.all(5),
                             child: Image.asset("assets/bag_5.png",
                               height: 300,
                               width: 170,),),
                         ))
                       ],
                     ),
                   ),








                 ],

            ),
             )
        ],
      ),
    );
  }
}
