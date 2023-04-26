import 'package:flutter/material.dart';
import 'package:islamy/home/hades.dart';
import 'package:islamy/home/home_quran/quran_tab.dart';
import 'package:islamy/home/radio.dart';
import 'package:islamy/home/tasbeh.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selsctedindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex:selsctedindex ,
              onTap: (index){
                selsctedindex=index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                  ),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                  ),
                  label: 'Hadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: 'Radio',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: 'Tasbeh',
                ),
              ],
            ),
          ),
          body: tabs[selsctedindex],
        ),
      ],
    );
  }
  List tabs=[
    QuranTab(),TasbehTab(),RadioTab(),HadesTab(),
  ];
}
