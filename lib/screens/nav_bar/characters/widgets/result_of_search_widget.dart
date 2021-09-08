import 'package:RickAndMorty/resources/icons.dart';
import 'package:flutter/material.dart';

class ResultOfSearchWidget extends StatefulWidget {
  final Function onPressButton;
  final int totalRecords;
  const ResultOfSearchWidget({Key key, this.totalRecords, this.onPressButton});

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
          "Всего персонажей: ${widget.totalRecords}".toUpperCase(),
          style: Theme.of(context).textTheme.overline,
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
