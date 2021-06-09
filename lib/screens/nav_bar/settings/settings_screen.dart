import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/nav_bar/settings/widgets/dialog_widget.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 72,
        toolbarHeight: 100,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: ElevatedButton(
            onPressed: () {
              //onItemTapped();
            },
            child: Container(
                height: 48,
                width: 48,
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 19),
                decoration: BoxDecoration(
                    color: ColorTheme.kLightBlue, shape: BoxShape.circle),
                child: myIcons.back),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Настройки",
            style: TextThemes.mainTitleStyle,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Внешний вид".toUpperCase(),
                style: TextThemes.resultOfSearchStyle,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                    context: context,
                    builder: (BuildContext context) => DialogWidget());
            },
            child: ListTile(
              leading: myIcons.theme,
              title: Text(
                "Темная тема",
                style: TextThemes.themeStyle,
              ),
              subtitle: Text(
                "Включена",
                style: TextThemes.dateStyle,
              ),
              trailing: myIcons.forward,
            ),
          ),
          LineComponent(
            horizontalPadding: 0,
          ),
          Text(
            "О приложении".toUpperCase(),
            style: TextThemes.resultOfSearchStyle,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            variables.appInfo,
            style: TextThemes.natureStyle,
          ),
          LineComponent(
            horizontalPadding: 0,
          ),
          Text(
            "Версия приложения".toUpperCase(),
            style: TextThemes.resultOfSearchStyle,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Rick & Morty  v1.0.0",
            style: TextThemes.natureStyle,
          ),
        ]),
      ),
    );
  }
}
