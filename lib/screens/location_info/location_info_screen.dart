import 'package:RickAndMorty/components/back_button_component.dart';
import 'package:RickAndMorty/data/models/character_model/characters_list_model.dart';
import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/components/character_list_component.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class LocationInfoScreen extends StatelessWidget {
  final LocationModel locationModel;
  const LocationInfoScreen({this.locationModel});

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
            Container(
              height: 298,
              width: size.width,
              child: FittedBox(
                child: Hero(
                  tag: "${locationModel.image}",
                  child: Image.asset(locationModel.image),
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
                        const SizedBox(height: 34),
                        Text(
                          locationModel.name,
                          style: TextThemes.locationStyle,
                        ),
                        Row(children: [
                          Text(
                            locationModel.category,
                            style: TextThemes.subTitleStyle,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            locationModel.measurement,
                            style: TextThemes.subTitleStyle,
                          ),
                        ]),
                        const SizedBox(height: 32),
                        Text(
                          locationModel.locationInfo,
                          style: TextThemes.mainInfoStyle,
                        ),
                        const SizedBox(height: 36),
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
          ]),
        ]),
      ),
    );
  }
}
