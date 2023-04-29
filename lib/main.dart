import 'package:flutter/material.dart';
import 'package:islamy/home/home_hadeth/hadeth_details.dart';
import 'package:islamy/home/home_hadeth/item_hadeth_name.dart';
import 'package:islamy/home/home_quran/sura_details.dart';
import 'package:islamy/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
        HadethDetails.routName:(context)=>HadethDetails(),

      },
      darkTheme:MythemeData.darkTheme,
      theme:MythemeData.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),
    );
  }
}

