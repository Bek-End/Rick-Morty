import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class LineComponent extends StatelessWidget {
  double horizontalPadding;
  LineComponent({this.horizontalPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1,
        margin: EdgeInsets.symmetric(vertical: 36, horizontal: horizontalPadding),
        color: ColorTheme.kLightBlue);
  }
}
