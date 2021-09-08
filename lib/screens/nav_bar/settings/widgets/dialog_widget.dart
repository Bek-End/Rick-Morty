import 'package:RickAndMorty/data/data_base/theme_types.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum ThemeEnum { off, included, systemSettings, energySaving }

class DialogWidget extends StatefulWidget {
  @override
  _DialogWidgetState createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  @override
  Widget build(BuildContext context) {
    final themeVM = Provider.of<ThemeNotifier>(context);
    return SimpleDialog(
        elevation: 0,
        contentPadding: EdgeInsets.zero,
        backgroundColor: Theme.of(context).dividerColor,
        title: Text(
          "Темная тема",
        ),
        titleTextStyle: Theme.of(context).textTheme.headline6,
        children: [
          RadioListTile<ThemeType>(
            title: Text(
              Variables.themeEnum[0],
              style: Theme.of(context).textTheme.subtitle1,
            ),
            value: ThemeType.light,
            groupValue: themeVM.getThemeType(),
            onChanged: (value) => themeVM.setThemeStyle(value),
          ),
          RadioListTile<ThemeType>(
            title: Text(
              Variables.themeEnum[1],
              style: Theme.of(context).textTheme.subtitle1,
            ),
            value: ThemeType.dark,
            groupValue: themeVM.getThemeType(),
            onChanged: (value) => themeVM.setThemeStyle(value),
          ),
          RadioListTile<ThemeType>(
            title: Text(
              Variables.themeEnum[2],
              style: Theme.of(context).textTheme.subtitle1,
            ),
            value: ThemeType.byDevice,
            groupValue: themeVM.getThemeType(),
            onChanged: (value) => themeVM.setThemeStyle(value),
          ),
          // RadioListTile<ThemeType>(
          //   title: Text(Variables.themeEnum[3]),
          //   value: ThemeType.dark,
          //   groupValue: themeVM.getThemeType(),
          //   onChanged: (value) => themeVM.setThemeStyle(value),
          // ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Отмена",
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          )
        ]);
  }
}
