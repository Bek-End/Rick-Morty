import 'package:RickAndMorty/components/character_list_component.dart';
import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/screens/nav_bar/locations/widgets/locations_back_button_widget.dart';
import 'package:RickAndMorty/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class LocationInfoScreen extends StatelessWidget {
  final LocationModel locationInfo;
  const LocationInfoScreen({this.locationInfo});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: LocationsBackButtonWidget(),
      ),
      body: Container(
        child: ListView(padding: EdgeInsets.zero, children: [
          Stack(children: [
            Container(
              height: 298,
              width: size.width,
              child: FittedBox(
                child: Image.network(locationInfo.data.imageName),
                fit: BoxFit.cover,
              ),
            ),
            Column(children: [
              Container(
                height: 252,
                width: size.width,
                color: Colors.transparent,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                        const SizedBox(height: 34),
                        Text(
                          locationInfo.data.name,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Row(children: [
                          Text(
                            locationInfo.data.type,
                            style: Theme.of(context).textTheme.caption,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            locationInfo.data.measurements,
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ]),
                        const SizedBox(height: 32),
                        Text(
                          locationInfo.data.about,
                          style: AppTextStyles.infoValue.copyWith(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        const SizedBox(height: 36),
                        Text(
                          "Персонажи",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(height: 24),
                      ] +
                      List.generate(
                        locationInfo.data.characters.length,
                        (index) => CharacterListComponent(
                          charactersModel: locationInfo.data.characters[index],
                        ),
                      ),
                ),
              ),
            ]),
          ]),
        ]),
      ),
    );
  }
}
