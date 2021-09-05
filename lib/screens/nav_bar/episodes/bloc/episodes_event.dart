part of 'episodes_bloc.dart';

abstract class EpisodInfo {
  String get episodId;
}

@freezed
abstract class EpisodesEvent with _$EpisodesEvent {
  const factory EpisodesEvent.started() = _Started;
  @Implements(EpisodInfo)
  const factory EpisodesEvent.info({String episodId}) = _InfoEvent;
}