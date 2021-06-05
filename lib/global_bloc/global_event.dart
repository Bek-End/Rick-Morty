part of 'global_bloc.dart';

@freezed
abstract class GlobalBlocEvent with _$GlobalBlocEvent {
  const factory GlobalBlocEvent.navbar() = _NavbarEvent;
}