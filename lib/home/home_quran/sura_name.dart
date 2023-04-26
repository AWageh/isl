import 'package:flutter/material.dart';
import 'package:islamy/home/home_quran/suradetails.dart';

class SuraName extends StatelessWidget {
String name;
int index;
SuraName({required this.name,required this.index});
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
