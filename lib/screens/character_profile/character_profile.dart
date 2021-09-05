import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/characters_back_button_widget.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/enter_widget.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/episodes_widget.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class CharacterProfileScreen extends StatelessWidget {
  final CharacterModel characterInfo;
  const CharacterProfileScreen({this.characterInfo});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CharactersBackButtonWidget(),
      ),
      body: Container(
        child: ListView(padding: EdgeInsets.zero, children: [
          Stack(children: [
            Column(children: [
              Container(
                height: 218,
                width: size.width,
                child: FittedBox(
                  child: Image.network(characterInfo.data.imageName),
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
                      Text(characterInfo.data.fullName,
                          style: TextThemes.characterNameStyle),
                      const SizedBox(height: 4),
                      Text(
                        characterInfo.data.status == 0 ? "Живой" : "Мертвый",
                        style: TextStyle(
                          color: characterInfo.data.status == 0
                              ? ColorTheme.kGreen
                              : ColorTheme.kRed,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 1.6,
                          letterSpacing: 0.25,
                        ),
                      ),
                      const SizedBox(height: 36),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(children: [
                          Text(
                            characterInfo.data.about,
                            style: TextThemes.mainInfoStyle,
                          ),
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
                              child: Text(
                                characterInfo.data.gender == 0
                                    ? "Мужской"
                                    : "Женский",
                                style: TextThemes.valueStyle,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                characterInfo.data.race,
                                style: TextThemes.valueStyle,
                              ),
                            )
                          ]),
                          const SizedBox(height: 20),
                          EnterWidget(
                            myKey: "Место рождения",
                            value: characterInfo.data.location.name,
                          ),
                        ]),
                      ),
                      LineComponent(
                        horizontalPadding: 0,
                      ),
                      EpisodesWidget(
                        episodesListModel: characterInfo.data.episodes,
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
                    child: Hero(
                      tag: "${characterInfo.data.imageName}",
                      child: ClipOval(
                        child: Image.network(characterInfo.data.imageName, width: 146,height: 146, fit: BoxFit.cover,),
                      ),
                    ),
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
