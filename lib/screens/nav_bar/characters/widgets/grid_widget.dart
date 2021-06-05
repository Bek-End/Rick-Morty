import 'package:RickAndMorty/screens/nav_bar/characters/models/characters_list_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/grid_item.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  CharactersListModel charactersListModel;
  GridWidget({this.charactersListModel});

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
          return GridItem(
            charactersModel: charactersListModel.charactersListModel[index],
          );
        },
      ),
    );
  }
}
