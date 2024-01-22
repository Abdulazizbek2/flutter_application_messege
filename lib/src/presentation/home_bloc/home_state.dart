part of 'home_bloc.dart';

@immutable
@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(null) String? text,
  }) = _HomeState;
}
