part of 'location_bloc.dart';

abstract class LocationInformation {
  LocationModel get locationInfo;
}

@freezed
abstract class LocationState with _$LocationState {
  @Implements(LocationInformation)
  const factory LocationState.initial({LocationModel locationInfo}) = LocationInfoInitialState;
}
