
import 'package:flutter/material.dart';
import 'package:islamy/home/home_hadeth/hadeth_tab.dart';
import 'package:islamy/home/home_hadeth/item_hadeth_details.dart';
import 'package:islamy/theme_data.dart';


class HadethDetails extends StatefulWidget {
  static const String routName = 'hadethdetails';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hight = MediaQuery.of(context).size.height;
    var args = ModalRoute.of(context)?.settings.arguments as Hadethargs;


    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.title}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          width: width * 0.9,
          height: hight * 0.9,
          margin: EdgeInsets.only(
              right: width * 0.05, left: width * 0.02, bottom: hight * 0.06),
          decoration: BoxDecoration(
            color: MythemeData.colorwhite,
            borderRadius: BorderRadius.circular(24),
          ),
          child:ListView.builder(

            itemCount: args.content.length,
            itemBuilder: (context, index) {
              return ItemHadethDetails(content:args.content[index]);
            },
          ),
        ),
      ),
    ]);
  }

}