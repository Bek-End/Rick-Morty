import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/global_bloc/global_bloc.dart';
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
        BlocProvider.of<GlobalBloc>(context).add(
          GlobalEvent.locationInfo(locationId: locationsData.id),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        height: 218,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).dividerColor,
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
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(children: [
              Text(
                locationsData.type,
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                locationsData.measurements,
                style: Theme.of(context).textTheme.caption,
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
