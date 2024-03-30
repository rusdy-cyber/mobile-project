import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:script_kiddy_s_application3/presentation/android_large_four_bottomsheet/models/android_large_four_model.dart';
part 'android_large_four_event.dart';
part 'android_large_four_state.dart';

/// A bloc that manages the state of a AndroidLargeFour according to the event that is dispatched to it.
class AndroidLargeFourBloc
    extends Bloc<AndroidLargeFourEvent, AndroidLargeFourState> {
  AndroidLargeFourBloc(AndroidLargeFourState initialState)
      : super(initialState) {
    on<AndroidLargeFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeFourInitialEvent event,
    Emitter<AndroidLargeFourState> emit,
  ) async {}
}
