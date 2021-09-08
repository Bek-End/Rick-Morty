import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/characters_back_button_widget.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/enter_widget.dart';
import 'package:RickAndMorty/screens/character_profile/widgets/episodes_widget.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:RickAndMorty/theme/app_text_styles.dart';
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
                color: Theme.of(context).backgroundColor,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 90),
                      Text(characterInfo.data.fullName,
                          style: Theme.of(context).textTheme.headline4),
                      const SizedBox(height: 4),
                      Text(characterInfo.data.status == 0 ? "Живой" : "Мертвый",
                          style: Theme.of(context).textTheme.overline.copyWith(
                                color: characterInfo.data.status == 0
                                    ? AppColors.green
                                    : AppColors.red,
                                letterSpacing: 0.25,
                              )),
                      const SizedBox(height: 36),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(children: [
                          Text(
                            characterInfo.data.about,
                            style: AppTextStyles.infoValue.copyWith(color: Theme.of(context).accentColor),
                          ),
                          const SizedBox(height: 24),
                          Row(children: [
                            Expanded(
                              child: Text(
                                "Пол",
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Расса",
                                style: Theme.of(context).textTheme.caption,
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
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                characterInfo.data.race,
                                style: Theme.of(context).textTheme.bodyText2,
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
              color: Theme.of(context).backgroundColor.withOpacity(0.65),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 138),
              Center(
                child: Container(
                  width: 146,
                  height: 146,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 8,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.network(
                      characterInfo.data.imageName,
                      width: 146,
                      height: 146,
                      fit: BoxFit.cover,
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
