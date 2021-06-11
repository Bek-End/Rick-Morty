import 'package:RickAndMorty/components/horizontal_route_component.dart';
import 'package:RickAndMorty/data/network/models/location_model/location_model.dart';
import 'package:RickAndMorty/screens/location_info/location_info_screen.dart';
import 'package:RickAndMorty/theme/color_theme.dart';
import 'package:RickAndMorty/theme/text_themes.dart';
import 'package:flutter/material.dart';

class LocationItem extends StatelessWidget {
  final LocationModel locationModel;
  const LocationItem({this.locationModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          ProfilePageRouteComponent(
            page: LocationInfoScreen(
              locationModel: locationModel,
            ),
          ),
        );
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
            child: Hero(tag: "${locationModel.image}",
                          child: Image.asset(
                locationModel.image,
                width: size.width,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              locationModel.name,
              style: TextThemes.mainTitleStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(children: [
              Text(
                locationModel.category,
                style: TextThemes.subTitleStyle,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                locationModel.measurement,
                style: TextThemes.subTitleStyle,
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
