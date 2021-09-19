import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:RickAndMorty/screens/nav_bar/characters/bloc/characters_bloc.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchComponent extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const SearchComponent({Key key, this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 48,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: MyIcons.search,
          ),
          Container(
            width: size.width - 165,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 25),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodyText1,
              ),
              controller: controller,
              onEditingComplete: () {
                BlocProvider.of<GlobalBloc>(context).add(
                  GlobalEvent.search(
                    controller: controller,
                    hintText: hintText,
                  ),
                );
              },
            ),
          ),
          Container(
            color: Theme.of(context).dividerColor.withOpacity(0.1),
            width: 1,
            margin: EdgeInsets.only(right: 14),
          ),
          IconButton(
            tooltip: "Filter",
            padding: EdgeInsets.only(right: 30),
            onPressed: () {
              switch (hintText) {
                case "Найти локацию":
                  BlocProvider.of<LocationsBloc>(context).add(
                      LocationsEvent.filter(
                          typeNumber: 0, measurementsNumber: 0, sort: 0));
                  break;
                case "Найти персонажа":
                  BlocProvider.of<CharactersBloc>(context).add(
                    CharactersEvent.filter(
                        sort: 0,
                        statusList: [false, false, false],
                        genderList: [false, false, false]),
                  );
                  break;
                default:
                  break;
              }
            },
            icon: MyIcons.filter,
          )
        ]),
      ),
    );
  }
}
