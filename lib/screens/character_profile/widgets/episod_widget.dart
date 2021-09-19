import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:RickAndMorty/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpisodWidgetWithIcon extends StatelessWidget {
  final Episode episodModel;
  const EpisodWidgetWithIcon({@required this.episodModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<GlobalBloc>(context).add(
            GlobalEvent.episodInfo(episodId: episodModel.id),
          );
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                episodModel.imageName,
                width: 74,
                height: 74,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Серия ${episodModel.series}".toUpperCase(),
                style: Theme.of(context).textTheme.overline,
              ),
              Text(
                episodModel.name,
                style: AppTextStyles.nameValue.copyWith(
                  color: Theme.of(context).accentColor,
                ),
              ),
              Text(
                episodModel.premiere.toString(),
                style: AppTextStyles.dateValue,
              )
            ])
          ]),
          MyIcons.forward
        ]),
      ),
    );
  }
}
