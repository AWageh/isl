import 'package:flutter/material.dart';

import '../../theme_data.dart';

class TasbehTab extends StatelessWidget {
  int count=0;

  List<String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
    'لا حول ولا قوه الا بالله',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [

          Stack(
              children: [
                         Image.asset('assets/images/deel.png',),
              ],
          ),
          // Divider(
          //   color: MythemeData.lightprimary,
          //   thickness: 2,
          // ),

          Image.asset('assets/images/body_sebha.png',),
          SizedBox(height: 12,),
          Text('Number of Tasbeha',
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(
            child: Column(
              children: [

              ],
            ),
          )
        ],
      ),
    );
  }
}



