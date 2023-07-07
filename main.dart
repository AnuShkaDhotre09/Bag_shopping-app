import 'package:flutter/material.dart';
import 'package:nush_clothing_brand/Theme/theme_constants.dart';
import 'package:nush_clothing_brand/splashScreen.dart';

import 'Theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}
ThemeManager _themeManager=ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
@override
  void dispose(){
    _themeManager.removeListener(themeListener);
    super.dispose();
  }
  @override
  void initState(){
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(




        debugShowCheckedModeBanner: false,
        title: 'Nush Clothing Brand',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: _themeManager.themeMode,
        home: splashScreen()
    );
  }
}
