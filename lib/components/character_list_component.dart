import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:RickAndMorty/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterListComponent extends StatelessWidget {
  final Character charactersModel;
  const CharacterListComponent({this.charactersModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<GlobalBloc>(context)
              .add(GlobalEvent.characterInfo(characterId: charactersModel.id));
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            ClipOval(
              child: Image.network(
                charactersModel.imageName,
                width: 74,
                height: 74,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 18),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                charactersModel.status == 0 ? "Живой" : "Мертвый",
                style: Theme.of(context).textTheme.overline.copyWith(
                      color: charactersModel.status == 0
                          ? AppColors.green
                          : AppColors.red,
                    ),
              ),
              Text(
                charactersModel.fullName,
                style: AppTextStyles.nameValue
                    .copyWith(color: Theme.of(context).accentColor),
              ),
              Row(children: [
                Text(
                  charactersModel.race,
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  charactersModel.gender == 0 ? "Мужской" : "Женский",
                  style: Theme.of(context).textTheme.caption,
                ),
              ])
            ])
          ]),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: MyIcons.forward,
          ),
        ]),
      ),
    );
  }
}
