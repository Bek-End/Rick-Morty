import 'package:RickAndMorty/global_bloc/navigator_events.dart';
import 'package:RickAndMorty/global_bloc/navigator_states.dart';
import 'package:RickAndMorty/screens/character_profile/character_profile_screen.dart';
import 'package:RickAndMorty/screens/navBar/navBarScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class NavigatorBloc {
  BehaviorSubject<NavigatorStates> _subject = BehaviorSubject();
  BehaviorSubject<NavigatorStates> get subject => _subject;
  GlobalKey<NavigatorState> navigatorKey;

  void mapEventToState(NavigatorEvents event) async {
    switch (event.runtimeType) {
      case InitialMainScreenEvent:
        InitialMainScreenEvent initialEvent = event;
        navigatorKey = initialEvent.navigatorKey;
        subject.sink.add(InitialMainScreenState());
        await Future.delayed(Duration(seconds: 2));
        navigatorKey.currentState.pushNamed(NavBarScreen.routeName);
        break;
      case CharacterProfileEvent:
        CharacterProfileEvent profileEvent = event;
        navigatorKey.currentState
            .push(ProfilePageRoute(index: profileEvent.index));
        break;
      case NavigatorPopEvent:
        navigatorKey.currentState.pop();
        break;
    }
  }

  void dispose() {
    _subject?.close();
  }
}

class ProfilePageRoute extends CupertinoPageRoute {
  final int index;
  ProfilePageRoute({this.index})
      : super(
            builder: (BuildContext context) =>
                new CharacterProfile(index: index));

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(
        opacity: animation, child: new CharacterProfile(index: this.index));
  }
}

NavigatorBloc navigatorBloc = NavigatorBloc();
