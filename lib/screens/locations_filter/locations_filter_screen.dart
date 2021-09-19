import 'package:RickAndMorty/components/line_component.dart';
import 'package:RickAndMorty/resources/my_icons.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:RickAndMorty/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/check_filter_widget.dart';

class LocationsFilterScreen extends StatelessWidget {
  int sort;
  int measurementNumber;
  int typeNumber;
  LocationsFilterScreen({this.measurementNumber, this.sort, this.typeNumber});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            padding: EdgeInsets.zero,
            tooltip: "back",
            icon: MyIcons.back,
            onPressed: () {
              context.read<LocationsBloc>()..add(LocationsEvent.started());
            },
          ),
          title: Text("Фильтры", style: Theme.of(context).textTheme.headline6),
          actions: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                BlocProvider.of<LocationsBloc>(context).add(
                  LocationsEvent.filter(
                      typeNumber: 0, measurementsNumber: 0, sort: 0),
                );
              },
              icon: MyIcons.deleteFilter,
            ),
          ]),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
            padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
            children: [
              Text(
                "Сортировать".toUpperCase(),
                style: Theme.of(context).textTheme.overline,
              ),
              const SizedBox(height: 29),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "По алфавиту",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      sort != 1 ? sort = 1 : sort = 0;
                      context.read<LocationsBloc>()
                        ..add(LocationsEvent.filter(
                          typeNumber: typeNumber,
                          measurementsNumber: measurementNumber,
                          sort: sort,
                        ));
                    },
                    icon: SvgPicture.asset(
                      "assets/svg_icons/filter_true.svg",
                      color: sort == 1 ? AppColors.blue : AppColors.darkGray,
                    ),
                  ),
                  const SizedBox(width: 37),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      sort != 2 ? sort = 2 : sort = 0;
                      context.read<LocationsBloc>()
                        ..add(LocationsEvent.filter(
                          typeNumber: typeNumber,
                          measurementsNumber: measurementNumber,
                          sort: sort,
                        ));
                    },
                    icon: SvgPicture.asset(
                      "assets/svg_icons/filter_false.svg",
                      color: sort == 2 ? AppColors.blue : AppColors.darkGray,
                    ),
                  ),
                ]),
              ]),
              LineComponent(horizontalPadding: 0),
              Text(
                "Фильтровать по:".toUpperCase(),
                style: Theme.of(context).textTheme.overline,
              ),
              CheckFilterWidget(
                  list: Variables.typeOfLocationsList,
                  index: typeNumber,
                  text: "Выберите тип локации"),
              CheckFilterWidget(
                  list: Variables.measurementsOfLocationsList,
                  index: measurementNumber,
                  text: "Выберите измерения локации"),
            ]),
      ),
    );
  }
}
