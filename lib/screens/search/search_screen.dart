import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/widgets/list_characters_widget.dart';
import 'package:RickAndMorty/screens/nav_bar/episodes/widgets/tab_bar_item_widget.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/widgets/locations_widget.dart';
import 'package:RickAndMorty/screens/search/widgets/app_bar_search_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/search_widget.dart';

class SearchScreen extends StatelessWidget {
  final String hintText;
  final dynamic model;
  final TextEditingController controller;
  const SearchScreen({Key key, this.model, this.controller, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: AppBarSearchWidget(hintText: hintText, controller: controller),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Результаты поиска".toUpperCase(),
                style: Theme.of(context).textTheme.overline,
              ),
            ),
          ),
        ),
      ),
      body: model.totalRecords == 0
          ? hintText == "Найти персонажа"
              ? SearchWidget(
                  image: "assets/images/search_characters.png",
                  text: "Персонаж с таким именем\nне найден")
              : hintText == "Найти эпизод"
                  ? SearchWidget(
                      image: "assets/images/search_episodes.png",
                      text: "Эпизода с таким\nназванием нет")
                  : SearchWidget(
                      image: "assets/images/search_locations.png",
                      text: "Локации с таким\nназванием не найдено")
          : hintText == "Найти персонажа"
              ? ListWidget(charactersListModel: model as CharactersModel)
              : hintText == "Найти эпизод"
                  ? TabBarItemWidget(
                      episodesData: (model.data) as List<EpisodesData>)
                  : LocationsWidget(locationsList: model as LocationsModel),
    );
  }
}
