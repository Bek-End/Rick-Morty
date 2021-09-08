import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:RickAndMorty/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpisodWidgetWithoutIcon extends StatelessWidget {
  final EpisodesData episodesData;
  const EpisodWidgetWithoutIcon({@required this.episodesData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<GlobalBloc>(context)
              .add(GlobalEvent.episodInfo(episodId: episodesData.id));
        },
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              episodesData.imageName,
              width: 74,
              height: 74,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Серия ${episodesData.series}".toUpperCase(),
              style: Theme.of(context).textTheme.overline.copyWith(
                    color: AppColors.blue.withOpacity(0.87),
                  ),
            ),
            Text(
              episodesData.name,
              style: AppTextStyles.nameValue.copyWith(
                color: Theme.of(context).accentColor,
              ),
            ),
            Text(
              episodesData.premiere.toString(),
              style: AppTextStyles.dateValue,
            )
          ])
        ]),
      ),
    );
  }
}
