import 'package:RickAndMorty/data/data_base/theme_types.dart';
import 'package:RickAndMorty/data/data_base/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_colors.dart';

// Dark and Light Srtyles for application

class ThemeNotifier with ChangeNotifier {
  ///
  /// APPLICATION DARK STYLE
  ///

  final darkTheme = ThemeData(
    backgroundColor: AppColors.darkBlue,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: Colors.transparent,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shadowColor: Colors.transparent),
    ),
    fontFamily: 'Roboto',
    primaryColor: AppColors.primaryDark,
    brightness: Brightness.dark,
    accentColor: AppColors.white,
    canvasColor: AppColors.dividerDark,
    dividerColor: AppColors.dividerDark,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.darkGray,
      ),
    ),
    scaffoldBackgroundColor: AppColors.primaryDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.green,
      unselectedItemColor: AppColors.darkGray,
      selectedIconTheme: IconThemeData(
        color: AppColors.green,
      ),
    ),
    textTheme: TextTheme(
      button: TextStyle(
        fontSize: 14,
        letterSpacing: 1.5,
        height: 1.7,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      headline1: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        height: 1.3,
        color: AppColors.white,
      ),
      headline4: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        letterSpacing: 0.25,
        height: 1.17,
        color: AppColors.white,
      ),
      headline6: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 20,
        letterSpacing: 0.15,
        height: 1.4,
        color: AppColors.white,
      ),
      overline: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 10,
        letterSpacing: 1.5,
        height: 1.6,
        color: AppColors.darkGray,
      ),
      caption: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        height: 1.3,
        color: AppColors.subTitle,
      ),
      bodyText1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.44,
        height: 1.5,
        color: AppColors.darkGray,
      ),
      bodyText2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.4,
        letterSpacing: 0.25,
        color: AppColors.white,
      ),
      subtitle1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.15,
        color: AppColors.white,
      ),
      subtitle2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
        height: 1.4,
        color: AppColors.white,
      ),
    ),
    dialogBackgroundColor: AppColors.dividerDark,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((state) => AppColors.white),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.dividerDark,
    ),
  );

  ///
  /// APPLICATION LIGHT STYLE
  ///

  final lightTheme = ThemeData(
    backgroundColor: AppColors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: Colors.transparent,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shadowColor: Colors.transparent),
    ),
    fontFamily: 'Roboto',
    primaryColor: AppColors.primaryLight,
    brightness: Brightness.light,
    accentColor: AppColors.darkBlue,
    canvasColor: AppColors.white,
    dividerColor: AppColors.dividerLight,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.lightGray,
      ),
    ),
    scaffoldBackgroundColor: AppColors.primaryLight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blue,
      unselectedItemColor: AppColors.darkGray,
      selectedIconTheme: IconThemeData(
        color: AppColors.blue,
      ),
    ),
    textTheme: TextTheme(
      button: TextStyle(
        fontSize: 14,
        letterSpacing: 1.5,
        height: 1.7,
        fontWeight: FontWeight.w500,
        color: AppColors.darkBlue,
      ),
      headline1: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        height: 1.3,
        color: AppColors.darkBlue,
      ),
      headline4: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        height: 1.17,
        letterSpacing: 0.25,
        color: AppColors.darkBlue,
      ),
      headline6: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 20,
        letterSpacing: 0.15,
        height: 1.4,
        color: AppColors.darkBlue,
      ),
      overline: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 10,
        letterSpacing: 1.5,
        height: 1.6,
        color: AppColors.gray3,
      ),
      caption: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.5,
        height: 1.3,
        color: AppColors.gray3,
      ),
      bodyText1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.44,
        height: 1.5,
        color: AppColors.lightGray,
      ),
      bodyText2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.4,
        letterSpacing: 0.25,
        color: AppColors.black,
      ),
      subtitle1: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.15,
        color: AppColors.darkBlue,
      ),
      subtitle2: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
        height: 1.4,
        color: AppColors.darkBlue,
      ),
    ),
    dialogBackgroundColor: AppColors.white,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.resolveWith((state) => AppColors.darkBlue),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.dividerLight,
    ),
  );

  // Active theme style
  ThemeData _themeData;
  ThemeData getTheme() => _themeData;

  // Active theme type
  ThemeType _activeThemeType;
  ThemeType getThemeType() => _activeThemeType;

  ThemeNotifier() {
    // Initial active theme style and type
    initTheme();
  }

  void initTheme() {
    // Detected theme (light or dark)
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    if (brightness == Brightness.dark) {
      _themeData = darkTheme;
      _activeThemeType = ThemeType.dark;
    } else {
      _themeData = lightTheme;
      _activeThemeType = ThemeType.light;
    }

    // Get data from local save
    SharedPreferences.getInstance().then(
      (prefs) {
        final localThemeType = prefs.getString(Constants.ThemeType);

        if (localThemeType != null) {
          _activeThemeType = ThemeType.values
              .firstWhere((element) => element.toString() == localThemeType);
        } else {
          _activeThemeType = ThemeType.byDevice;
        }

        if (_activeThemeType == ThemeType.dark) {
          _themeData = darkTheme;
        } else if (_activeThemeType == ThemeType.light) {
          _themeData = lightTheme;
        } else {
          final brightness =
              SchedulerBinding.instance.window.platformBrightness;
          if (brightness == Brightness.dark) {
            _themeData = darkTheme;
          } else {
            _themeData = lightTheme;
          }
        }

        notifyListeners();
      },
    );
  }

  // Change application Theme (light, dark, system)
  void setThemeStyle(ThemeType themeType) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(Constants.ThemeType, '$themeType');
    _activeThemeType = themeType;
    initTheme();
  }
}
