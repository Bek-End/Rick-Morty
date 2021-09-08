import 'package:RickAndMorty/components/error_component.dart';
import 'package:RickAndMorty/components/loading_component.dart';
import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/screens/character_profile/character_profile.dart';
import 'package:RickAndMorty/screens/episod_info/episod_info.dart';
import 'package:RickAndMorty/screens/location_info/location_info_screen.dart';
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
                if (state is CharacterInfoState) {
                  return CharacterProfileScreen(
                      characterInfo: state.characterInfo);
                }
                if (state is EpisodInfoState) {
                  return EpisodInfoScreen(episodInfo: state.episodInfo);
                }
                if (state is LocationInfoState) {
                  return LocationInfoScreen(locationInfo: state.locationInfo);
                }
                if (state is GlobalLoadingState) {
                  return LoadingComponent();
                }
                if (state is GlobalErrorState) {
                  return ErrorComponent(errorMessage: state.errorMessage);
                }
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
