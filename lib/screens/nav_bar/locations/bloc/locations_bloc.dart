import 'dart:async';

import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/data/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locations_event.dart';
part 'locations_state.dart';
part 'locations_bloc.freezed.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc() : super(LocationsLoadingState());
  final _repository = Repository();
  LocationsModel locationsList = LocationsModel();

  @override
  Stream<LocationsState> mapEventToState(
    LocationsEvent event,
  ) async* {
    yield* event.map(started: _started);
  }

  Stream<LocationsState> _started(_Started event) async* {
    if (locationsList.totalRecords == null) {
      yield LocationsLoadingState();
      try {
        locationsList = await _repository.getLocations();
      } catch (e) {
        yield LocationsErrorState(errorMessage: e);
      }
    }
    yield LocationsState.initial(locationsList: locationsList);
  }
}
