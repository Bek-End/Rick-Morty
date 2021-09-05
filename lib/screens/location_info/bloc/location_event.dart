part of 'location_bloc.dart';

abstract class LocationInfo {
  String get locationId;
}

@freezed
abstract class LocationEvent with _$LocationEvent {
  @Implements(LocationInfo)
  const factory LocationEvent.started({String locationId}) = _Started;
}
