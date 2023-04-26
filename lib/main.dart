import 'package:flutter/material.dart';
import 'package:islamy/home/home_quran/suradetails.dart';
import 'package:islamy/theme_data.dart';

import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routName ,
      routes: {
        HomeScreen.routName:(context)=>HomeScreen(),
        SuraDetails.routName:(context)=>SuraDetails(),
      },
      darkTheme:MythemeData.darkTheme,
      theme:MythemeData.lightTheme,
    );
  }
}

