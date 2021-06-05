import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/resources/images.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/character_profile/model/episodes_list_model.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/enter_widget.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/episodes_widget.dart';
import 'package:RickAndMorty/screens/characters/models/characters_model.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class CharacterProfileScreen extends StatelessWidget {
  CharactersModel charactersModel;
  CharacterProfileScreen({this.charactersModel});

  @override
  Widget build(BuildContext context) {
    int index;
    Size size = MediaQuery.of(context).size;
    // return BlocConsumer<CharacterProfileBloc, CharacterProfileState>(
    //     builder: (context, state) {

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
                    Navigator.pop(context);
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
                      child: Image.asset(images.avatars[index + 1]),
                      fit: BoxFit.cover)),
              Container(
                  width: size.width,
                  color: ColorTheme.kMainDark,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 90),
                        Text(variables.characterName[index],
                            style: TextThemes.characterNameStyle),
                        const SizedBox(height: 4),
                        Text(variables.characterStatus[index],
                            style: TextStyle(
                                color: index < 4
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
                                  style: TextThemes.characterNatureStyle),
                              const SizedBox(height: 24),
                              Row(children: [
                                Expanded(
                                    child: Text("Пол",
                                        style: TextThemes.keyStyle)),
                                Expanded(
                                    child: Text("Расса",
                                        style: TextThemes.keyStyle))
                              ]),
                              const SizedBox(height: 4),
                              Row(children: [
                                Expanded(
                                    child: Text(variables.characterSex[index],
                                        style: TextThemes.valueStyle)),
                                Expanded(
                                    child: Text("Человек",
                                        style: TextThemes.valueStyle))
                              ]),
                              const SizedBox(height: 20),
                              EnterWidget(
                                  myKey: "Место рождения",
                                  value: "Земля C-137"),
                              EnterWidget(
                                  myKey: "Местоположение",
                                  value: "Земля (Измерение подменны)")
                            ])),
                        Container(
                            height: 1,
                            margin: const EdgeInsets.only(top: 36, bottom: 45),
                            color: ColorTheme.kDirtyGrey),
                        EpisodesWidget(
                          episodesListModel:
                              EpisodesListModel.getEpisodesList(),
                        )
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
                          child: Image.asset(images.avatars[index + 1]))))
            ])
          ])
        ])));
    //});
  }
}
