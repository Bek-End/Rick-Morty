import 'package:RickAndMorty/resources/icons.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationsBackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      leadingWidth: 72,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: ElevatedButton(
          onPressed: () {
            BlocProvider.of<LocationsBloc>(context).add(LocationsEvent.started());
          },
          child: MyIcons.back,
        ),
      ),
    );
  }
}
