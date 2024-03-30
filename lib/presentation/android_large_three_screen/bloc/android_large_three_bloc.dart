import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eight_item_model.dart';
import '../models/nine_item_model.dart';
import 'package:script_kiddy_s_application3/presentation/android_large_three_screen/models/android_large_three_model.dart';
part 'android_large_three_event.dart';
part 'android_large_three_state.dart';

/// A bloc that manages the state of a AndroidLargeThree according to the event that is dispatched to it.
class AndroidLargeThreeBloc
    extends Bloc<AndroidLargeThreeEvent, AndroidLargeThreeState> {
  AndroidLargeThreeBloc(AndroidLargeThreeState initialState)
      : super(initialState) {
    on<AndroidLargeThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeThreeInitialEvent event,
    Emitter<AndroidLargeThreeState> emit,
  ) async {
    emit(state.copyWith(
        androidLargeThreeModelObj: state.androidLargeThreeModelObj?.copyWith(
      eightItemList: fillEightItemList(),
      nineItemList: fillNineItemList(),
    )));
  }

  List<EightItemModel> fillEightItemList() {
    return [
      EightItemModel(
          remixIconsLin: ImageConstant.imgRemixIconsLinPrimary,
          masuk: "Masuk",
          sevenHundred: "07:00 ",
          tepatWaktu: "Tepat Waktu"),
      EightItemModel(
          remixIconsLin: ImageConstant.imgRemixIconsLinPrimary35x34,
          masuk: "Keluar",
          sevenHundred: "-- : --",
          tepatWaktu: "Pulang")
    ];
  }

  List<NineItemModel> fillNineItemList() {
    return [
      NineItemModel(
          izinAbsen: "Izin Absen",
          isiFormUntukMeminta: "Isi form untuk meminta izin absen")
    ];
  }
}
