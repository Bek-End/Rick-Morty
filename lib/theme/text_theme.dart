import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class MyTextTheme {
  static TextStyle characterNameStyle =
      TextStyle(color: ColorTheme.kWhite, fontSize: 34, height: 1.17);
  static TextStyle characterNatureStyle = TextStyle(
      color: ColorTheme.kWhite, fontSize: 13, height: 1.5, letterSpacing: 0.5);
  static TextStyle keyStyle =
      TextStyle(color: ColorTheme.kDirtyGrey, height: 1.6, letterSpacing: 0.5);
  static TextStyle valueStyle =
      TextStyle(color: ColorTheme.kWhite, height: 1.4, letterSpacing: 0.25);
  static TextStyle subTitleStyle = TextStyle(
      height: 1.6, letterSpacing: 0.5, fontSize: 12, color: ColorTheme.kGrey);
  static TextStyle mainTitleStyle = TextStyle(
      color: ColorTheme.kWhite,
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 1.4);
  static TextStyle characterNameStyleGrid = TextStyle(
      fontSize: 14,
      height: 1.6,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
      color: ColorTheme.kWhite);
  static TextStyle seriesStyle = TextStyle(
      color: ColorTheme.kBlue.withOpacity(0.87),
      fontWeight: FontWeight.w500,
      fontSize: 10,
      height: 1.6,
      letterSpacing: 1.5);
  static TextStyle characterCountStyle = TextStyle(
      color: ColorTheme.kDirtyGrey,
      fontWeight: FontWeight.w500,
      fontSize: 10,
      height: 1.6,
      letterSpacing: 1.5);
  static TextStyle titleStyle = TextStyle(
      color: ColorTheme.kWhite,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.5);
  static TextStyle dateStyle = TextStyle(
      color: ColorTheme.kDirtyGrey,
      fontSize: 14,
      height: 1.4,
      letterSpacing: 0.25);
}
