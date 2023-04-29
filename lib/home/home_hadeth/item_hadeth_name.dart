import 'package:flutter/material.dart';
import 'package:islamy/home/home_hadeth/hadeth_details.dart';
import 'package:islamy/home/home_hadeth/hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
  static const String routName='hadeth';

  Hadethargs hadeth;

  ItemHadethName({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routName,
            arguments:hadeth
        );
      },
      child: Text(hadeth.title,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }
}