import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class ResultOfSearchWidget extends StatefulWidget {
  final Function onPressButton;
  const ResultOfSearchWidget({Key key, this.onPressButton});

  @override
  _ResultOfSearchWidgetState createState() => _ResultOfSearchWidgetState();
}

class _ResultOfSearchWidgetState extends State<ResultOfSearchWidget> {
  bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "Всего персонажей: 200".toUpperCase(),
          style: TextThemes.resultOfSearchStyle,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            icon: isGrid ? MyIcons.list : MyIcons.grid,
            onPressed: () {
              setState(
                () {
                  isGrid = !isGrid;
                },
              );
              widget.onPressButton();
            },
          ),
        )
      ]),
    );
  }
}
