import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class LocationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "LocationsScreen",
          style: TextStyle(color: ColorTheme.kWhite),
        ),
      ),
    );
  }
}
