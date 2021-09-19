import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:RickAndMorty/screens/locations_filter/widgets/item_widget.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationsCheckFilterScreen extends StatelessWidget {
  int index;
  final List<String> list;
  LocationsCheckFilterScreen({this.index, this.list});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            BlocProvider.of<LocationsBloc>(context).add(
              LocationsEvent.filter(typeNumber: null, measurementsNumber: null),
            );
          },
          icon: MyIcons.back,
        ),
        title: Text(list.length == 8 ? "Выберите тип" : "Выберите измерение",
            style: Theme.of(context).textTheme.headline6),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
          children: [
                Text(index == 0 ? "Не выбрано" : list[index],
                    style: Theme.of(context).textTheme.subtitle1),
                LineComponent(horizontalPadding: 0),
              ] +
              List.generate(
                list.length - 1,
                (i) => ItemWidget(list: list, index: i + 1),
              ),
        ),
      ),
    );
  }
}
