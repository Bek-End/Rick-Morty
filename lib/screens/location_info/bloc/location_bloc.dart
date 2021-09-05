import 'dart:async';

import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/data/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final _repository = Repository();
  LocationModel locationInfo = LocationModel();
  LocationBloc()
      : super(LocationInfoInitialState(locationInfo: new LocationModel()));

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(started: _started);
  }

  Stream<LocationState> _started(_Started event) async* {
    locationInfo = await _repository.getLocation(event.locationId);
    yield LocationState.initial(locationInfo: locationInfo);
  }
}
