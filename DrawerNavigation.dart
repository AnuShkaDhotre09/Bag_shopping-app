import 'package:flutter/material.dart';
import 'package:nush_clothing_brand/Home.dart';
import 'package:nush_clothing_brand/HomeScreen.dart';

import 'cart.dart';
class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {

      return Container(
        child: Drawer(

          child: ListView(
            children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRogqPhyGzlgQzUGNMWyMCtnJg40wjpJg5mhA&usqp=CAU'
                      ),
                  ),

                    accountName: Text('Ramsha Khan'), accountEmail: Text('mush0205@gmail.com')),
              ListTile(
                       leading: Icon(Icons.home,
                       color: Colors.orange,size: 40,),
                title: Text('Home',
                style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home())),
              ),


              ListTile(
                leading: Icon(Icons.add_shopping_cart,
                  color: Colors.orange,size: 40,),
                title: Text('Cart',
                  style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold
                  ),
                ),
                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart())),
              ),

              ListTile(
                leading: Icon(Icons.logout,
                  color: Colors.orange,size: 40,),
                title: Text('Logout',
                  style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold
                  ),
                ),
                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen())),
              ),

            ],
          )
        ,
        ),


    );
  }
}
