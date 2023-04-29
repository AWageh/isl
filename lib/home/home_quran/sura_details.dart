import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/home/home_quran/item_sura_details.dart';
import 'package:islamy/theme_data.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = 'suradetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hight = MediaQuery.of(context).size.height;
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    if (verses.isEmpty) {
      LoadFile(args.index);
    }

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
            '${args.name}',
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
          child: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: MythemeData.lightprimary,
                      thickness: 2,
                    );
                  },
                  itemCount: verses.length,
                  itemBuilder: (context, index) {
                    return ItemSuraDetails(text: verses[index],index: index,);
                  },
                ),
        ),
      ),
    ]);
  }

  Future<void> LoadFile(int index) async {
    String filecontent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = filecontent.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArg {
  String name;
  int index;
  SuraDetailsArg({required this.name, required this.index});
}
