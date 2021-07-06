import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/characters.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/locations_screen.dart';
import 'package:RickAndMorty/screens/nav_bar/settings/settings_screen.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'episodes/episodes_screen.dart';

class NavBarScreen extends StatefulWidget {
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
            icon: SvgPicture.asset(
              MyIcons.navBar[0],
              color: ColorTheme.kDirtyGrey,
            ),
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[0],
              color: ColorTheme.kGreen,
            ),
            label: Variables.navBarLabels[0],
          ),
          BottomNavigationBarItem(
            backgroundColor: ColorTheme.kLightBlue,
            icon: SvgPicture.asset(
              MyIcons.navBar[1],
            ),
            label: Variables.navBarLabels[1],
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[1],
              color: ColorTheme.kGreen,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: ColorTheme.kLightBlue,
            icon: SvgPicture.asset(
              MyIcons.navBar[2],
            ),
            label: Variables.navBarLabels[2],
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[2],
              color: ColorTheme.kGreen,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[3],
              color: ColorTheme.kGreen,
            ),
            backgroundColor: ColorTheme.kLightBlue,
            icon: SvgPicture.asset(
              MyIcons.navBar[3],
            ),
            label: Variables.navBarLabels[3],
          )
        ],
        selectedItemColor: ColorTheme.kGreen,
        unselectedItemColor: ColorTheme.kDirtyGrey,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        showUnselectedLabels: true,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
