import 'package:flutter/material.dart';
import 'package:islamy/home/home_quran/sura_details.dart';

class ItemSuraName extends StatelessWidget {
String name;
int index;
ItemSuraName({required this.name,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetails.routName,
        arguments: SuraDetailsArg(name: name, index: index),
        );
      },
      child: Text(name,
      style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
