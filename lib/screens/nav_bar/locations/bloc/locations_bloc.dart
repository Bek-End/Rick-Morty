import 'dart:async';

import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/data/repository.dart';
import 'package:RickAndMorty/resources/variables.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locations_event.dart';
part 'locations_state.dart';
part 'locations_bloc.freezed.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc() : super(LocationsLoadingState());
  final _repository = Repository();
  LocationsModel locationsList = LocationsModel();
  int sort = 0;
  int typeNumber;
  int measurementsNumber;

  @override
  Stream<LocationsState> mapEventToState(LocationsEvent event) async* {
    yield* event.map(started: _started, filter: _filter, check: _check);
  }

  Stream<LocationsState> _started(_Started event) async* {
    yield LocationsLoadingState();
    if (sort != 0 || measurementsNumber != null || typeNumber != null) {
      try {
        locationsList = await _repository.getLocationsFilter(
            name: "",
            type: Variables.typeOfLocationsList[typeNumber],
            measurements:
                Variables.measurementsOfLocationsList[measurementsNumber]);
        if (sort == 1)
          locationsList.data.sort((a, b) {
            return a.name.toLowerCase().compareTo(b.name.toLowerCase());
          });
        if (sort == 2)
          locationsList.data.sort((a, b) {
            return b.name.toLowerCase().compareTo(a.name.toLowerCase());
          });
      } catch (e) {
        yield LocationsErrorState(errorMessage: e);
      }
    } else if (locationsList.totalRecords == null) {
      try {
        locationsList = await _repository.getLocations();
      } catch (e) {
        yield LocationsErrorState(errorMessage: e);
      }
    }
    yield LocationsState.initial(locationsList: locationsList);
  }

  Stream<LocationsState> _filter(_LocationsFilterEvent event) async* {
    try {
      locationsList.totalRecords = null;
      sort = event.sort;
      if (event.typeNumber != null && event.typeNumber != 0)
        typeNumber = event.typeNumber;
      if (event.measurementsNumber != null && event.measurementsNumber != 0)
        measurementsNumber = event.measurementsNumber;
      yield LocationsState.filter(
          sort: sort,
          measurementsNumber: measurementsNumber,
          typeNumber: typeNumber);
    } catch (e) {
      yield LocationsState.error(errorMessage: e);
    }
  }

  Stream<LocationsState> _check(_LocationCheckFilterEvent event) async* {
    try {
      if (event.list.length == 8) typeNumber = event.index;
      if (event.list.length == 7) measurementsNumber = event.index;
      yield LocationsState.check(list: event.list, index: event.index);
    } catch (e) {
      yield LocationsState.error(errorMessage: e);
    }
  }
}
