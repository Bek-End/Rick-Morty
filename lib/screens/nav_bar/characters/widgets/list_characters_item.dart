import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:RickAndMorty/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCharactersItem extends StatelessWidget {
  final Character dataOfCharacters;
  const ListCharactersItem({this.dataOfCharacters});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<CharactersBloc>(context)
              .add(CharactersEvent.info(characterId: dataOfCharacters.id));
        },
        child: Row(children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage(dataOfCharacters.imageName),
          ),
          const SizedBox(width: 18),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(dataOfCharacters.status == 0 ? "Живой" : "Мертвый",
                style: Theme.of(context).textTheme.overline.copyWith(
                      letterSpacing: 1.5,
                      color: dataOfCharacters.status == 0
                          ? AppColors.green
                          : AppColors.red,
                    )),
            Text(
              dataOfCharacters.fullName,
              style: AppTextStyles.nameValue.copyWith(
                color: Theme.of(context).accentColor,
              ),
            ),
            Row(children: [
              Text(
                dataOfCharacters.race,
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                dataOfCharacters.gender == 0 ? ", Мужской" : ", Женский",
                style: Theme.of(context).textTheme.caption,
              ),
            ])
          ])
        ]),
      ),
    );
  }
}
