import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/character_profile/character_profile.dart';
import 'package:RickAndMorty/screens/characters/characters.dart';
import 'package:RickAndMorty/screens/episodes/episodes_screen.dart';
import 'package:RickAndMorty/screens/locations/locations_screen.dart';
import 'package:RickAndMorty/screens/settings/settings_screen.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarScreen extends StatefulWidget {
  static final routeName = "/NavBarScreen";
  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  List<Widget> _widgetOptions = <Widget>[
    CharactersScreen(),
    LocationsScreen(),
    EpisodesScreen(),
    SettingsScreen()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: ColorTheme.kLightBlue,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorTheme.kLightBlue,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: ColorTheme.kLightBlue,
                  icon: SvgPicture.asset(myIcons.navBar[0], color: ColorTheme.kDirtyGrey),
                  activeIcon:
                      SvgPicture.asset(myIcons.navBar[0], color: ColorTheme.kGreen),
                  label: variables.episodLabels[0]),
              BottomNavigationBarItem(
                  backgroundColor: ColorTheme.kLightBlue,
                  icon: SvgPicture.asset(myIcons.navBar[1]),
                  label: variables.episodLabels[1],
                  activeIcon:
                      SvgPicture.asset(myIcons.navBar[1], color: ColorTheme.kGreen)),
              BottomNavigationBarItem(
                  backgroundColor: ColorTheme.kLightBlue,
                  icon: SvgPicture.asset(myIcons.navBar[2]),
                  label: variables.episodLabels[2],
                  activeIcon:
                      SvgPicture.asset(myIcons.navBar[2], color: ColorTheme.kGreen)),
              BottomNavigationBarItem(
                  activeIcon:
                      SvgPicture.asset(myIcons.navBar[3], color: ColorTheme.kGreen),
                  backgroundColor: ColorTheme.kLightBlue,
                  icon: SvgPicture.asset(myIcons.navBar[3]),
                  label: variables.episodLabels[3])
            ],
            selectedItemColor: ColorTheme.kGreen,
            unselectedItemColor: ColorTheme.kDirtyGrey,
            currentIndex: _selectedIndex,
            onTap: onItemTapped,
            showUnselectedLabels: true),
        body: IndexedStack(index: _selectedIndex, children: _widgetOptions));
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}