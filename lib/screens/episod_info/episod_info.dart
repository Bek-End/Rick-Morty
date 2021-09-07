import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/data/models/episod_model.dar/episod_model.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/components/character_list_component.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/episodes_back_button_widget.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class EpisodInfoScreen extends StatelessWidget {
  final EpisodModel episodInfo;
  const EpisodInfoScreen({this.episodInfo});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: EpisodesBackButtonWidget(),
      ),
      body: Container(
        child: ListView(padding: EdgeInsets.zero, children: [
          Stack(alignment: Alignment.topCenter, children: [
            Container(
              height: 298,
              width: size.width,
              child: FittedBox(
                child: Image.network(episodInfo.data.imageName),
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
                            episodInfo.data.name,
                            style: TextThemes.locationStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Center(
                          child: Text(
                            "серия ${episodInfo.data.series}".toUpperCase(),
                            style: TextThemes.seriesStyle,
                          ),
                        ),
                        const SizedBox(height: 36),
                        Text(
                          episodInfo.data.plot,
                          style: TextThemes.mainInfoStyle,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Премьера",
                          style: TextThemes.keyStyle,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          episodInfo.data.premiere.toString(),
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
                        episodInfo.data.characters.length,
                        (index) => CharacterListComponent(
                          charactersModel: episodInfo.data.characters[index],
                        ),
                      ),
                ),
              ),
            ]),
            Positioned(top: 185, child: MyIcons.play)
          ]),
        ]),
      ),
    );
  }
}
