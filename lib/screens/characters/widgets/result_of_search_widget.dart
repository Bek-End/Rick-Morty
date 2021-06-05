import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Всего персонажей: 200",
            style: TextStyle(color: ColorTheme.kDirtyGrey),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: isGrid ? myIcons.list : myIcons.grid,
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
        ],
      ),
    );
  }
}
