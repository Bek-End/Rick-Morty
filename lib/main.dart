import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/nav_bar_screen.dart';
import 'package:RickAndMorty/screens/splash/splash_screen.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rick&Morty',
      theme: ThemeData(
        unselectedWidgetColor: ColorTheme.kDirtyGrey,
        scaffoldBackgroundColor: ColorTheme.kDarkBlue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              primary: Colors.transparent,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shadowColor: Colors.transparent),
        ),
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => GlobalBloc()..add(GlobalEvent.navbar()),
          ),
          BlocProvider(
            create: (_) => CharactersBloc()..add(CharactersEvent.select()),
          )
        ],
        child: BlocConsumer<GlobalBloc, GlobalState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              splash: (_) => SplashScreen(),
              navBar: (_) => NavBarScreen(),
              orElse: () {
                return Container();
              },
            );
          },
        ),
      ),
    );
  }
}
