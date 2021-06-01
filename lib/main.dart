import 'package:RickAndMorty/global_bloc/navigator_bloc.dart';
import 'package:RickAndMorty/global_bloc/navigator_events.dart';
import 'package:RickAndMorty/global_bloc/navigator_states.dart';
import 'package:RickAndMorty/screens/characters/characters_screen.dart';
import 'package:RickAndMorty/screens/navBar/navBarScreen.dart';
import 'package:RickAndMorty/screens/initial/initial_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    imageCache.clear();
    super.initState();
    navigatorBloc
        .mapEventToState(InitialMainScreenEvent(navigatorKey: _navigatorKey));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: navigatorBloc.subject.stream,
        builder: (context, AsyncSnapshot<NavigatorStates> snapshot) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Rick&Morty',
              theme: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          primary: Colors.transparent,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shadowColor: Colors.transparent))),
              navigatorKey: _navigatorKey,
              routes: {
                NavBarScreen.routeName: (context) => NavBarScreen(),
                InitialScreen.routeName: (context) => InitialScreen(),
                CharactersScreen.routeName: (context) => CharactersScreen()
              },
              home: InitialScreen());
        });
  }
}
