import 'package:RickAndMorty/data/network/models/character_model/characters_list_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/grid_characters_item.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class GridCharactersWidget extends StatelessWidget {
  CharactersListModel charactersListModel;
  GridCharactersWidget({this.charactersListModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: ColorTheme.kDarkBlue,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: charactersListModel.charactersListModel.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
          crossAxisCount: 2,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return GridCharactersItem(
            charactersModel: charactersListModel.charactersListModel[index],
          );
        },
      ),
    );
  }
}
