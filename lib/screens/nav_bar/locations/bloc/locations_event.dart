part of 'locations_bloc.dart';

abstract class LocationsFilter {
  int get sort;
  int get typeNumber;
  int get measurementsNumber;
}

abstract class FilterLocations {
  int get index;
  List<String> get list;
}

@freezed
abstract class LocationsEvent with _$LocationsEvent {
  const factory LocationsEvent.started() = _Started;

  @Implements(LocationsFilter)
  const factory LocationsEvent.filter(
      {int typeNumber, int measurementsNumber, int sort}) = _LocationsFilterEvent;

      
  @Implements(FilterLocations)
  const factory LocationsEvent.check(
      {
  int index,
  List<String> list}) = _LocationCheckFilterEvent;
}
