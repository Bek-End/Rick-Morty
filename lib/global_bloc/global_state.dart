part of 'global_bloc.dart';

@freezed
abstract class GlobalBlocState with _$GlobalBlocState {
  const factory GlobalBlocState.splash() = _SplashState;
  const factory GlobalBlocState.navBar() = _NavBarState;
}
