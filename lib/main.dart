import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/bloc/episodes_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/nav_bar_screen.dart';
import 'package:RickAndMorty/screens/splash/splash_screen.dart';
import 'package:RickAndMorty/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'data/repository.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<Repository>(
          create: (_) => Repository()..init(),
        ),
      ],
      child: Consumer<ThemeNotifier>(
        builder: (context, theme, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Rick&Morty',
          theme: theme.getTheme(),
          home: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => GlobalBloc()..add(GlobalEvent.navbar()),
              ),
              BlocProvider(
                create: (_) => CharactersBloc()..add(CharactersEvent.select()),
              ),
              BlocProvider(
                create: (_) => LocationsBloc()..add(LocationsEvent.started()),
              ),
              BlocProvider(
                create: (_) => EpisodesBloc()..add(EpisodesEvent.started()),
              ),
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
        ),
      ),
    );
  }
}
