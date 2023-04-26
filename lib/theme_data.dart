import 'package:flutter/material.dart';

class MythemeData{
static Color lightprimary=Color(0xffB7935F);
static Color colorBlack=Color(0xff242424);
static Color colorwhite=Color(0xffFFFFFF);
 static ThemeData lightTheme=ThemeData(
primaryColor: lightprimary,
   scaffoldBackgroundColor: Colors.transparent,
   appBarTheme: AppBarTheme(
     backgroundColor:Colors.transparent,
     elevation: 0,
     centerTitle: true,
     iconTheme: IconThemeData(
       color:colorBlack
     )
   ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor:colorBlack ,
       unselectedItemColor: colorwhite,
       showSelectedLabels: true,
       showUnselectedLabels: true,
       selectedLabelStyle: TextStyle(fontSize: 12),
     ),

     textTheme: TextTheme(
         headline1:TextStyle(
           color: colorBlack,
           fontSize: 30,
           fontWeight: FontWeight.bold,
         ),
       headline2: TextStyle(
         color: colorBlack,
         fontSize: 25,
         fontWeight: FontWeight.w400,
       ),
       subtitle1: TextStyle(
         color: colorBlack,
         fontSize: 25,
         fontWeight: FontWeight.w500,
       ),
     ),
 );
 static ThemeData darkTheme=ThemeData();
}