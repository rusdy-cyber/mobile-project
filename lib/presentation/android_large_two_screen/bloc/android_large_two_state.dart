// ignore_for_file: must_be_immutable

part of 'android_large_two_bloc.dart';

/// Represents the state of AndroidLargeTwo in the application.
class AndroidLargeTwoState extends Equatable {
  AndroidLargeTwoState({
    this.addressController,
    this.eyeController,
    this.isShowPassword = true,
    this.androidLargeTwoModelObj,
  });

  TextEditingController? addressController;

  TextEditingController? eyeController;

  AndroidLargeTwoModel? androidLargeTwoModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        addressController,
        eyeController,
        isShowPassword,
        androidLargeTwoModelObj,
      ];

  AndroidLargeTwoState copyWith({
    TextEditingController? addressController,
    TextEditingController? eyeController,
    bool? isShowPassword,
    AndroidLargeTwoModel? androidLargeTwoModelObj,
  }) {
    return AndroidLargeTwoState(
      addressController: addressController ?? this.addressController,
      eyeController: eyeController ?? this.eyeController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      androidLargeTwoModelObj:
          androidLargeTwoModelObj ?? this.androidLargeTwoModelObj,
    );
  }
}
