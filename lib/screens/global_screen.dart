import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/nav_bar_screen.dart';
import 'package:RickAndMorty/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalScreen extends StatefulWidget {
  @override
  _GlobalScreenState createState() => _GlobalScreenState();
}

class _GlobalScreenState extends State<GlobalScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalBloc, GlobalState>(
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
    );
  }
}
