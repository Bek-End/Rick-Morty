part of 'episodes_bloc.dart';

@freezed
abstract class EpisodesEvent with _$EpisodesEvent {
  const factory EpisodesEvent.started() = _Started;
}