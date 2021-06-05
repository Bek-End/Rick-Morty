import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalBlocEvent, GlobalBlocState> {
  GlobalBloc() : super(_SplashState());

  @override
  Stream<GlobalBlocState> mapEventToState(
    GlobalBlocEvent event,
  ) async* {
    yield* event.map(navbar: _splashToNavBar);

    // switch (event.runtimeType) {
    //   case _NavbarEvent:
    //     await Future.delayed(Duration(seconds: 2));
    //     yield NavBarState();
    //     break;
    //   // case _NavbarEvent:
    //   //   yield NavBarState();
    // }
    // //yield* event.maybeMap(splash: _splashToNavBar,  orElse: (){});
  }

  Stream<GlobalBlocState> _splashToNavBar(_NavbarEvent event) async* {
    await Future.delayed(Duration(seconds: 2));
    yield GlobalBlocState.navBar();
  }
}
