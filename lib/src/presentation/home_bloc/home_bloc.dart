import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<_HotelDetail>(_hotelDetail);
    on<_RoomsDetail>(_roomsDetail);
  }

  FutureOr<void> _hotelDetail(
    _HotelDetail event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();

    EasyLoading.dismiss();
  }

  FutureOr<void> _roomsDetail(
    _RoomsDetail event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    // final res = await _Repository.Detail();
    // res.fold((error) {
    //   EasyLoading.showError(error.message);
    //   // LogService.e(" ----> error on _pagesHandler: $error");
    // }, (data) {
    //   emit(state.copyWith(roomsInfoModel: data));
    // });
    EasyLoading.dismiss();
  }
}
