import 'package:RickAndMorty/global_bloc/navigator_bloc.dart';
import 'package:RickAndMorty/global_bloc/navigator_events.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/character_profile/widgets.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CharacterProfile extends StatefulWidget {
  static final routeName = "/CharacterProfile";
  final int index;
  const CharacterProfile({this.index});
  @override
  _CharacterProfileState createState() => _CharacterProfileState();
}

class _CharacterProfileState extends State<CharacterProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            leadingWidth: 72,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: ElevatedButton(
                  onPressed: () {
                    navigatorBloc.mapEventToState(NavigatorPopEvent());
                  },
                  child: Container(
                      height: 48,
                      width: 48,
                      padding:
                          EdgeInsets.symmetric(horizontal: 17, vertical: 19),
                      decoration: BoxDecoration(
                          color: ColorTheme.kLightBlue, shape: BoxShape.circle),
                      child: myIcons.back),
                ))),
        body: Container(
            child: ListView(padding: EdgeInsets.zero, children: [
          Stack(children: [
            Column(children: [
              Container(
                  height: 218,
                  width: size.width,
                  child: FittedBox(
                      child: Image.asset(images.avatars[widget.index + 1]),
                      fit: BoxFit.cover)),
              Container(
                  width: size.width,
                  color: ColorTheme.kMainDark,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 90),
                        Text(variables.characterName[widget.index],
                            style: MyTextTheme.characterNameStyle),
                        const SizedBox(height: 4),
                        Text(variables.characterStatus[widget.index],
                            style: TextStyle(
                                color: widget.index < 4
                                    ? ColorTheme.kGreen
                                    : ColorTheme.kRed,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                height: 1.6,
                                letterSpacing: 0.25)),
                        const SizedBox(height: 36),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(children: [
                              Text(variables.characterNature,
                                  style: MyTextTheme.characterNatureStyle),
                              const SizedBox(height: 24),
                              Row(children: [
                                Expanded(
                                    child: Text("Пол",
                                        style: MyTextTheme.keyStyle)),
                                Expanded(
                                    child: Text("Расса",
                                        style: MyTextTheme.keyStyle))
                              ]),
                              const SizedBox(height: 4),
                              Row(children: [
                                Expanded(
                                    child: Text(
                                        variables.characterSex[widget.index],
                                        style: MyTextTheme.valueStyle)),
                                Expanded(
                                    child: Text("Человек",
                                        style: MyTextTheme.valueStyle))
                              ]),
                              const SizedBox(height: 20),
                              characterProfileWidgets.enter(
                                  "Место рождения", "Земля C-137"),
                              characterProfileWidgets.enter("Местоположение",
                                  "Земля (Измерение подменны)")
                            ])),
                        Container(
                            height: 1,
                            margin: const EdgeInsets.only(top: 36, bottom: 45),
                            color: ColorTheme.kDirtyGrey),
                        Container(
                            child: characterProfileWidgets.episodes(),
                            padding: const EdgeInsets.symmetric(horizontal: 16))
                      ]))
            ]),
            Container(
                width: size.width,
                height: 218,
                color: ColorTheme.kMainDark.withOpacity(0.65)),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 138),
              Center(
                  child: Container(
                      width: 146,
                      height: 146,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              width: 8, color: ColorTheme.kMainDark)),
                      child: FittedBox(
                          child:
                              Image.asset(images.avatars[widget.index + 1]))))
            ])
          ])
        ])));
  }
}
