part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.hotelDetail() = _HotelDetail;

  const factory HomeEvent.roomsDetail() = _RoomsDetail;

  //del
}
