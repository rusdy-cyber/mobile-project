import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:script_kiddy_s_application3/presentation/android_large_two_screen/models/android_large_two_model.dart';
part 'android_large_two_event.dart';
part 'android_large_two_state.dart';

/// A bloc that manages the state of a AndroidLargeTwo according to the event that is dispatched to it.
class AndroidLargeTwoBloc
    extends Bloc<AndroidLargeTwoEvent, AndroidLargeTwoState> {
  AndroidLargeTwoBloc(AndroidLargeTwoState initialState) : super(initialState) {
    on<AndroidLargeTwoInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<AndroidLargeTwoState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    AndroidLargeTwoInitialEvent event,
    Emitter<AndroidLargeTwoState> emit,
  ) async {
    emit(state.copyWith(
      addressController: TextEditingController(),
      eyeController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
