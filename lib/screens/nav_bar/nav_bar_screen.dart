import 'package:RickAndMorty/components/error_component.dart';
import 'package:RickAndMorty/components/loading_component.dart';
import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/characters_filter/characters_filter_screen.dart';
import 'package:RickAndMorty/screens/locations_filter/locations_filter_screen.dart';
import 'package:RickAndMorty/screens/locations_filter/location_check_filter_screen.dart';
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
      listener: (context, state) {
        state.map(
          loading: (_) => CharactersLoadingState(),
          error: (_) => CharactersErrorState(),
          select: (_) => CharactersSelectState(),
          filter: (_) => CharactersFilterState(),
        );
      },
      builder: (context, state) {
        if (state is CharactersErrorState) {
          return ErrorComponent(errorMessage: state.errorMessage);
        }
        if (state is CharactersLoadingState) {
          return LoadingComponent();
        }
        if (state is CharactersFilterState) {
          return CharactersFilterScreen(
            statusList: state.statusList,
            genderList: state.genderList,
            sort: state.sort,
          );
        }
        if (state is CharactersSelectState) {
          return CharactersScreen(
            charactersList: state.charactersList,
            isGrid: state.isGrid,
          );
        }
      },
    ),
    BlocConsumer<LocationsBloc, LocationsState>(
      listener: (context, state) {
        state.map(
          initial: (_) => LocationsInitialState(),
          loading: (_) => LocationsLoadingState(),
          error: (_) => LocationsErrorState(),
          filter: (_) => LocationsFilterState(),
          check: (_) => LocationCheckFilterState(),
        );
      },
      builder: (context, state) {
        return BlocBuilder<LocationsBloc, LocationsState>(
            builder: (context, state) {
          if (state is LocationsErrorState) {
            return ErrorComponent(errorMessage: state.errorMessage);
          }
          if (state is LocationsLoadingState) {
            return LoadingComponent();
          }
          if (state is LocationsInitialState) {
            return LocationsScreen(locationsList: state.locationsList);
          }

          if (state is LocationCheckFilterState) {
            return LocationsCheckFilterScreen(
                index: state.index, list: state.list);
          }
          if (state is LocationsFilterState) {
            return LocationsFilterScreen(
              sort: state.sort,
              typeNumber: state.typeNumber,
              measurementNumber: state.measurementsNumber,
            );
          }
        });
      },
    ),
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
            icon: SvgPicture.asset(MyIcons.navBar[0]),
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[0],
              color:
                  Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            ),
            label: Variables.navBarLabels[0],
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.navBar[1]),
            label: Variables.navBarLabels[1],
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[1],
              color:
                  Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.navBar[2]),
            label: Variables.navBarLabels[2],
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[2],
              color:
                  Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.navBar[3]),
            activeIcon: SvgPicture.asset(
              MyIcons.navBar[3],
              color:
                  Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
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
