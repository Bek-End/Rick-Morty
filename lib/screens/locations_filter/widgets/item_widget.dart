import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemWidget extends StatelessWidget {
  int index;
  final List<String> list;
  ItemWidget({Key key, this.index, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          BlocProvider.of<LocationsBloc>(context)
              .add(LocationsEvent.check(list: list, index: index));
        },
        child:
            Text(list[index], style: Theme.of(context).textTheme.subtitle1),
      ),
    );
  }
}
