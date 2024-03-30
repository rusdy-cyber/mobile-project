import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:script_kiddy_s_application3/presentation/android_large_one_screen/models/android_large_one_model.dart';
part 'android_large_one_event.dart';
part 'android_large_one_state.dart';

/// A bloc that manages the state of a AndroidLargeOne according to the event that is dispatched to it.
class AndroidLargeOneBloc
    extends Bloc<AndroidLargeOneEvent, AndroidLargeOneState> {
  AndroidLargeOneBloc(AndroidLargeOneState initialState) : super(initialState) {
    on<AndroidLargeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeOneInitialEvent event,
    Emitter<AndroidLargeOneState> emit,
  ) async {}
}
