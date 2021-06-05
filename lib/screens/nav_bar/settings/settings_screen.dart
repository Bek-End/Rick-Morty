import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "SettingsScreen",
          style: TextStyle(color: ColorTheme.kWhite),
        ),
      ),
    );
  }
}
