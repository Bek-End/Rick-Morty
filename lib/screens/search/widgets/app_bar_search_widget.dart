import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/resources/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBArSearchWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const AppBArSearchWidget({Key key, this.hintText, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: Theme.of(context).dividerColor),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          tooltip: "back",
          icon: MyIcons.back,
          onPressed: () {
            controller.text = '';
            BlocProvider.of<GlobalBloc>(context).add(GlobalEvent.back());
          },
        ),
        Container(
          width: size.width - 128,
          height: 48,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 0),
              border: InputBorder.none,
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
        IconButton(
          tooltip: "clear",
          icon: MyIcons.exit,
          onPressed: () {
            controller.text = '';
          },
        ),
      ]),
    );
  }
}
