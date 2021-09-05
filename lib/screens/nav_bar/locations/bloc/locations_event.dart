part of 'locations_bloc.dart';

abstract class LocationInfo {
  String get locationId;
}

@freezed
abstract class LocationsEvent with _$LocationsEvent {
  const factory LocationsEvent.started() = _Started;
  @Implements(LocationInfo)
  const factory LocationsEvent.info({String locationId}) = _InfoEvent;
}