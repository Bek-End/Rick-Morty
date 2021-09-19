part of 'locations_bloc.dart';

abstract class Locations {
  LocationsModel get locationsList;
}

abstract class LocationFilter {
  int get sort;
  int get typeNumber;
  int get measurementsNumber;
}

abstract class FilterLocation {
  int get index;
  List<String> get list;
}

@freezed
abstract class LocationsState with _$LocationsState {
  factory LocationsState.loading() = LocationsLoadingState;
  factory LocationsState.error({String errorMessage}) = LocationsErrorState;
  @Implements(Locations)
  const factory LocationsState.initial({
    LocationsModel locationsList,
  }) = LocationsInitialState;
  @Implements(LocationFilter)
  const factory LocationsState.filter(
      {int typeNumber,
      int measurementsNumber,
      int sort}) = LocationsFilterState;
  @Implements(FilterLocation)
  const factory LocationsState.check({int index, List<String> list}) =
      LocationCheckFilterState;
}
