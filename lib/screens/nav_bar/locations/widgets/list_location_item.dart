import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/bloc/locations_bloc.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationItem extends StatelessWidget {
  final LocationsData locationsData;
  const LocationItem({this.locationsData});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<LocationsBloc>(context).add(LocationsEvent.info(locationId: locationsData.id));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        height: 218,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorTheme.kLightBlue,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.network(
              locationsData.imageName,
              width: size.width,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              locationsData.name,
              style: TextThemes.mainTitleStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(children: [
              Text(
                locationsData.type,
                style: TextThemes.subTitleStyle,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                locationsData.measurements,
                style: TextThemes.subTitleStyle,
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
