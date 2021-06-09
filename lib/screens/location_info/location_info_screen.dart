import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/location_info/widgets/character_list.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/models/characters_list_model.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/model/location_model.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class LocationInfoScreen extends StatelessWidget {
  LocationModel locationModel;
  LocationInfoScreen({this.locationModel});

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
              Navigator.pop(context);
            },
            child: Container(
                height: 48,
                width: 48,
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 19),
                decoration: BoxDecoration(
                    color: ColorTheme.kLightBlue, shape: BoxShape.circle),
                child: myIcons.back),
          ),
        ),
      ),
      body: Container(
        child: ListView(padding: EdgeInsets.zero, children: [
          Stack(children: [
            Container(
              height: 298,
              width: size.width,
              child: FittedBox(
                child: Image.asset(locationModel.image),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Container(
                  height: 252,
                  width: size.width,
                  color: Colors.transparent,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
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
                            locationModel.locationNature,
                            style: TextThemes.natureStyle,
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
                          (i) => CharacterList(
                            charactersModel:
                                CharactersListModel.getCharactersList()
                                    .charactersListModel[i],
                          ),
                        ),
                  ),
                ),
              ],
            ),
          ]),
        ]),
      ),
    );
  }
}
