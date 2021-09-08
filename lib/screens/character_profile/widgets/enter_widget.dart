import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterWidget extends StatelessWidget {
  final String myKey, value;
  const EnterWidget({this.myKey, this.value});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<LocationsBloc>(context).add(LocationsEvent.info());
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(myKey, style: Theme.of(context).textTheme.caption),
          Text(value, style: Theme.of(context).textTheme.bodyText2)
        ]),
        MyIcons.forward
      ]),
    );
  }
}
