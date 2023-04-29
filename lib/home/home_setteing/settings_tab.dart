import 'package:flutter/material.dart';
import 'package:islamy/home/home_setteing/language_bottom_sheet.dart';
import 'package:islamy/home/home_setteing/theming_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.subtitle1,
          ),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),

              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).primaryColor,
              ),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(AppLocalizations.of(context)!.theming,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          InkWell(
            onTap: (){
              showThemingBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),

              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).primaryColor,
              ),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context) {
          return LanguageBottomSheet();
        },
    );
  }

  void showThemingBottomSheet() {
    showModalBottomSheet(context: context,
      builder: (context) {
        return ThemingBottomSheet();
      },
    );
  }
}
