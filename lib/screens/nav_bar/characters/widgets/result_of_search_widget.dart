import 'package:RickAndMorty/resources/icons.dart';
import 'package:flutter/material.dart';

class ResultOfSearchWidget extends StatelessWidget {
  final Function onPressButton;
  final int totalRecords;
  final bool isGrid;
  const ResultOfSearchWidget(
      {Key key, this.totalRecords, this.onPressButton, this.isGrid});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "Всего персонажей: $totalRecords".toUpperCase(),
          style: Theme.of(context).textTheme.overline,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            icon: isGrid ? MyIcons.list : MyIcons.grid,
            onPressed: () {
              onPressButton();
            },
          ),
        )
      ]),
    );
  }
}
