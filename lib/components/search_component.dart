import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/resources/icons.dart';
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
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: MyIcons.search,
          ),
          Container(
            width: size.width - 141,
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
          MyIcons.filter
        ]),
      ),
    );
  }
}
