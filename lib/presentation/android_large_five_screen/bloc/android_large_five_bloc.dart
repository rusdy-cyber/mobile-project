import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/quickview_item_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:script_kiddy_s_application3/presentation/android_large_five_screen/models/android_large_five_model.dart';
part 'android_large_five_event.dart';
part 'android_large_five_state.dart';

/// A bloc that manages the state of a AndroidLargeFive according to the event that is dispatched to it.
class AndroidLargeFiveBloc
    extends Bloc<AndroidLargeFiveEvent, AndroidLargeFiveState> {
  AndroidLargeFiveBloc(AndroidLargeFiveState initialState)
      : super(initialState) {
    on<AndroidLargeFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeFiveInitialEvent event,
    Emitter<AndroidLargeFiveState> emit,
  ) async {
    emit(state.copyWith(
        androidLargeFiveModelObj: state.androidLargeFiveModelObj?.copyWith(
      quickviewItemList: fillQuickviewItemList(),
    )));
  }

  List<QuickviewItemModel> fillQuickviewItemList() {
    return [
      QuickviewItemModel(jumlahIzin: "Jumlah Izin", text: "0"),
      QuickviewItemModel(jumlahIzin: "Jumlah Hadir", text: "2"),
      QuickviewItemModel(jumlahIzin: "Jumlah Sakit", text: "1"),
      QuickviewItemModel(jumlahIzin: "Jumlah Alpa", text: "0")
    ];
  }
}
