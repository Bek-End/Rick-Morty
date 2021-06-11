import 'package:RickAndMorty/components/back_button_component.dart';
import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/data/network/models/character_model/characters_model.dart';
import 'package:RickAndMorty/data/network/models/episod_model/episodes_list_model.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/enter_widget.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/episodes_widget.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class CharacterProfileScreen extends StatelessWidget {
  final CharactersModel charactersModel;
  const CharacterProfileScreen({this.charactersModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BackButtonComponent(),
      ),
      body: Container(
        child: ListView(padding: EdgeInsets.zero, children: [
          Stack(children: [
            Column(children: [
              Container(
                height: 218,
                width: size.width,
                child: FittedBox(
                  child: Image.asset(charactersModel.image),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: size.width,
                color: ColorTheme.kMainDark,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 90),
                      Text(charactersModel.name,
                          style: TextThemes.characterNameStyle),
                      const SizedBox(height: 4),
                      Text(
                        charactersModel.status,
                        style: TextStyle(
                            color: charactersModel.id < 5
                                ? ColorTheme.kGreen
                                : ColorTheme.kRed,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            height: 1.6,
                            letterSpacing: 0.25),
                      ),
                      const SizedBox(height: 36),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(children: [
                          Text(charactersModel.characterInfo,
                              style: TextThemes.mainInfoStyle),
                          const SizedBox(height: 24),
                          Row(children: [
                            Expanded(
                              child: Text(
                                "Пол",
                                style: TextThemes.keyStyle,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Расса",
                                style: TextThemes.keyStyle,
                              ),
                            )
                          ]),
                          const SizedBox(height: 4),
                          Row(children: [
                            Expanded(
                              child: Text(charactersModel.sex,
                                  style: TextThemes.valueStyle),
                            ),
                            Expanded(
                              child:
                                  Text("Человек", style: TextThemes.valueStyle),
                            )
                          ]),
                          const SizedBox(height: 20),
                          EnterWidget(
                              myKey: "Место рождения", value: "Земля C-137"),
                          EnterWidget(
                              myKey: "Местоположение",
                              value: "Земля (Измерение подменны)")
                        ]),
                      ),
                      LineComponent(
                        horizontalPadding: 0,
                      ),
                      EpisodesWidget(
                        episodesListModel: EpisodesListModel.getEpisodesList(),
                      )
                    ]),
              )
            ]),
            Container(
              width: size.width,
              height: 218,
              color: ColorTheme.kMainDark.withOpacity(0.65),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 138),
              Center(
                child: Container(
                  width: 146,
                  height: 146,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 8, color: ColorTheme.kMainDark),
                  ),
                  child: FittedBox(
                    child: Hero(tag: "${charactersModel.image}", child: Image.asset(charactersModel.image),),
                  ),
                ),
              ),
            ]),
          ]),
        ]),
      ),
    );
  }
}
