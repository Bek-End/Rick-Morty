import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridCharactersItem extends StatelessWidget {
  final Character dataOfCharacters;
  const GridCharactersItem({this.dataOfCharacters});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<GlobalBloc>(context).add(
          GlobalEvent.characterInfo(characterId: dataOfCharacters.id),
        );
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          flex: 5,
          child: CircleAvatar(
            backgroundImage: NetworkImage(dataOfCharacters.imageName),
            radius: 60,
          ),
        ),
        Spacer(),
        Expanded(
          flex: 3,
          child: Column(children: [
            Text(dataOfCharacters.status == 0 ? "Живой" : "Мертвый",
                style: Theme.of(context).textTheme.overline.copyWith(
                      letterSpacing: 1.5,
                      color: dataOfCharacters.status == 0
                          ? AppColors.green
                          : AppColors.red,
                    )),
            Text(dataOfCharacters.fullName,
                style: Theme.of(context).textTheme.subtitle2),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                dataOfCharacters.race,
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                dataOfCharacters.gender == 0 ? ", Мужской" : ", Женский",
                style: Theme.of(context).textTheme.caption,
              ),
            ]),
          ]),
        ),
      ]),
    );
  }
}
