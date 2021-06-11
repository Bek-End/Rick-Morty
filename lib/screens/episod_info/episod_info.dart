import 'package:RickAndMorty/components/back_button_component.dart';
import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/data/network/models/character_model/characters_list_model.dart';
import 'package:RickAndMorty/data/network/models/episod_model/episod_model.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/components/character_list_component.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class EpisodInfoScreen extends StatelessWidget {
  final EpisodModel episodModel;
  const EpisodInfoScreen({this.episodModel});

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
          Stack(alignment: Alignment.topCenter, children: [
            Container(
              height: 298,
              width: size.width,
              child: FittedBox(
                child: Hero(
                  tag: "${episodModel.image}",
                  child: Image.asset(episodModel.image),
                ),
                fit: BoxFit.cover,
              ),
            ),
            Column(children: [
              Container(
                height: 252,
                width: size.width,
                color: Colors.transparent,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: size.width,
                decoration: BoxDecoration(
                  color: ColorTheme.kMainDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                        const SizedBox(height: 82),
                        Center(
                          child: Text(
                            episodModel.title,
                            style: TextThemes.locationStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Center(
                          child: Text(
                            episodModel.serie,
                            style: TextThemes.seriesStyle,
                          ),
                        ),
                        const SizedBox(height: 36),
                        Text(
                          episodModel.episodInfo,
                          style: TextThemes.mainInfoStyle,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Премьера",
                          style: TextThemes.keyStyle,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          episodModel.date,
                          style: TextThemes.dateStyle
                              .copyWith(color: ColorTheme.kWhite),
                        ),
                        LineComponent(
                          horizontalPadding: 0,
                        ),
                        Text(
                          "Персонажи",
                          style: TextThemes.mainTitleStyle,
                        ),
                        const SizedBox(height: 24),
                      ] +
                      List.generate(
                        6,
                        (i) => CharacterListComponent(
                          charactersModel:
                              CharactersListModel.getCharactersList()
                                  .charactersListModel[i],
                        ),
                      ),
                ),
              ),
            ]),
            Positioned(top: 185, child: myIcons.play)
          ]),
        ]),
      ),
    );
  }
}
