import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

enum ThemeEnum { off, included, systemSettings, energySaving }

class DialogWidget extends StatefulWidget {
  const DialogWidget({Key key}) : super(key: key);

  @override
  _DialogWidgetState createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  ThemeEnum _select = ThemeEnum.included;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        elevation: 0,
        contentPadding: EdgeInsets.zero,
        backgroundColor: ColorTheme.kLightBlue,
        title: Text(
          "Темная тема",
        ),
        titleTextStyle: TextThemes.mainTitleStyle,
        children: [
          ListTile(
            title: Text(
              variables.themeEnum[0],
              style: TextThemes.themeStyle,
            ),
            leading: Radio<ThemeEnum>(
              value: ThemeEnum.off,
              groupValue: _select,
              onChanged: (ThemeEnum value) {
                setState(() {
                  _select = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              variables.themeEnum[1],
              style: TextThemes.themeStyle,
            ),
            leading: Radio<ThemeEnum>(
              value: ThemeEnum.included,
              groupValue: _select,
              onChanged: (ThemeEnum value) {
                setState(() {
                  _select = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              variables.themeEnum[2],
              style: TextThemes.themeStyle,
            ),
            leading: Radio<ThemeEnum>(
              value: ThemeEnum.systemSettings,
              groupValue: _select,
              onChanged: (ThemeEnum value) {
                setState(() {
                  _select = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              variables.themeEnum[3],
              style: TextThemes.themeStyle,
            ),
            leading: Radio<ThemeEnum>(
              value: ThemeEnum.energySaving,
              groupValue: _select,
              onChanged: (ThemeEnum value) {
                setState(() {
                  _select = value;
                });
              },
            ),
          ),
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
                  style: TextThemes.dialogStyle,
                ),
              ),
            ),
          )
        ]);
  }
}
