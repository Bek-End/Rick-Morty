part of 'locations_bloc.dart';

abstract class Locations {
  LocationsModel get locationsList;
}

@freezed
abstract class LocationsState with _$LocationsState {
  factory LocationsState.loading() = LocationsLoadingState;
  factory LocationsState.error({String errorMessage}) = LocationsErrorState;
  @Implements(Locations)
  const factory LocationsState.initial({
    LocationsModel locationsList,
  }) = LocationsInitialState;
}
