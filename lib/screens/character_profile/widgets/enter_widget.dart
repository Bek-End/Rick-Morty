import 'package:RickAndMorty/global_bloc/global_bloc.dart';
import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterWidget extends StatelessWidget {
  final id;
  final String myKey, value;
  const EnterWidget({this.myKey, this.value, this.id});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<GlobalBloc>(context).add(
          GlobalEvent.locationInfo(locationId: id),
        );
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
