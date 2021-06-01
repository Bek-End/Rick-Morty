import 'package:RickAndMorty/global_bloc/navigator_bloc.dart';
import 'package:RickAndMorty/global_bloc/navigator_states.dart';
import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  static final routeName = "/InitialScreen";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return StreamBuilder(
        stream: navigatorBloc.subject.stream,
        builder: (context, AsyncSnapshot<NavigatorStates> snapshot) {
          if (snapshot.hasData) {
            switch (snapshot.data.runtimeType) {
              case InitialMainScreenState:
                return Scaffold(
                    body: Container(
                        color: ColorTheme.kDarkBlue,
                        child: Stack(children: [
                          Image.asset(images.mainImage,
                              fit: BoxFit.cover,
                              width: size.width,
                              height: size.height),
                          Container(
                              height: size.height,
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Positioned(child: images.rick, top: 53.92),
                                    Positioned(child: images.and, top: 246.7),
                                    Positioned(child: images.morty, top: 241.28)
                                  ])),
                          Container(
                              height: size.height,
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Positioned(
                                        child: images.morty2, bottom: 194.73),
                                    Positioned(child: images.rick2, bottom: 0)
                                  ]))
                        ])));
                break;
              default:
                return Scaffold(backgroundColor: ColorTheme.kMainDark, body: Container());
                break;
            }
          } else {
            return Scaffold(backgroundColor: ColorTheme.kMainDark, body: Container());
          }
        });
  }
}
