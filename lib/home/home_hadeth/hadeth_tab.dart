import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/home/home_hadeth/item_hadeth_name.dart';
import 'package:islamy/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadesTab extends StatefulWidget {
  @override
  State<HadesTab> createState() => _HadesTabState();
}

class _HadesTabState extends State<HadesTab> {
  List<Hadethargs> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if(hadethList.isEmpty){
      loadHadethFile();

    }
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
              'assets/images/hadeth_image.png'),
        ),
        Divider(
          color: MythemeData.lightprimary,
          thickness: 2,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.headline2,
        ),
        Divider(
          color: MythemeData.lightprimary,
          thickness: 2,
        ),
        Expanded(
          flex: 3,
          child: hadethList.isEmpty ?
          Center(child: CircularProgressIndicator(),):
          ListView.separated(
            separatorBuilder: (context,index){
              return Divider(
                color: MythemeData.lightprimary,
                thickness: 2,
              );
            },
            itemCount: hadethList.length,
            itemBuilder:(context,index){
              return ItemHadethName(hadeth:hadethList[index]);
            },
          ),
        ),

      ],
    );
  }

  Future<void> loadHadethFile() async{
    String fileContent=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>allAhadeth=fileContent.split('#\r\n');
    for(int i=0;i<allAhadeth.length;i++){
      List<String>singleHadeth = allAhadeth[i].split('\n');
      String title = singleHadeth[0];
      singleHadeth.removeAt(0);
      Hadethargs hadethargs = Hadethargs(title: title, content: singleHadeth);
      hadethList.add(hadethargs);

    }
    setState(() {

    });
  }
}
class Hadethargs{
  String title;
  List<String>content ;
  Hadethargs({required this.title,required this.content});
}