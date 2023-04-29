import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemingBottomSheet extends StatelessWidget {
  const ThemingBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.headline3,
              ),
              Icon(Icons.check,color: Theme.of(context).primaryColor,)
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Icon(Icons.check)
            ],
          ),
        ],
      ),
    );
  }
}
