import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class EpisodesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "EpisodesScreen",
          style: TextStyle(color: ColorTheme.kWhite),
        ),
      ),
    );
  }
}
