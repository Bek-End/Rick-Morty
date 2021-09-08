import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/grid_characters_item.dart';
import 'package:flutter/material.dart';

class GridCharactersWidget extends StatelessWidget {
  final CharactersModel charactersListModel;
  const GridCharactersWidget({this.charactersListModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      //color: AppColors.primaryDark,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: charactersListModel.data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
          crossAxisCount: 2,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return GridCharactersItem(
            dataOfCharacters: charactersListModel.data[index],
          );
        },
      ),
    );
  }
}
