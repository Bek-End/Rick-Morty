import 'package:RickAndMorty/components/error_component.dart';
import 'package:RickAndMorty/components/loading_component.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/characters.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/locations_screen.dart';
import 'package:RickAndMorty/screens/nav_bar/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'characters/bloc/characters_bloc.dart';
import 'episodes/bloc/episodes_bloc.dart';
import 'episodes/episodes_screen.dart';
import 'locations/bloc/locations_bloc.dart';

class NavBarScreen extends StatefulWidget {
  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  List<Widget> _widgetOptions = <Widget>[
    BlocConsumer<CharactersBloc, CharactersState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is CharactersErrorState) {
          return ErrorComponent(errorMessage: state.errorMessage);
        }
        if (state is CharactersLoadingState) {
          return LoadingComponent();
        }
        if (state is SelectState) {
          return CharactersScreen(
            charactersList: state.charactersList,
            isGrid: state.isGrid,
          );
        }
      },
    ),
    BlocBuilder<LocationsBloc, LocationsState>(builder: (context, state) {
      if (state is LocationsErrorState) {
        return ErrorComponent(errorMessage: state.errorMessage);
      }
      if (state is LocationsLoadingState) {
        return LoadingComponent();
      }
      if (state is LocationsInitialState) {
        return LocationsScreen(locationsList: state.locationsList);
      }
    }),
    BlocBuilder<EpisodesBloc, EpisodesState>(builder: (context, state) {
      if (state is EpisodesErrorState) {
        return ErrorComponent(errorMessage: state.errorMessage);
      }
      if (state is EpisodesLoadingState) {
        return LoadingComponent();
      }
      if (state is EpisodesInitialState) {
        return EpisodesScreen(episodesList: state.episodesList);
      }
    }),
    SettingsScreen()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              MyIcons.navBar[0],
            ),
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[0],
            ),
            label: Variables.navBarLabels[0],
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              MyIcons.navBar[1],
            ),
            label: Variables.navBarLabels[1],
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[1],
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              MyIcons.navBar[2],
            ),
            label: Variables.navBarLabels[2],
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[2],
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[3],
            ),
            icon: SvgPicture.asset(
              MyIcons.navBar[3],
            ),
            label: Variables.navBarLabels[3],
          )
        ],
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
