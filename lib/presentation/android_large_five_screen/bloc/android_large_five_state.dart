// ignore_for_file: must_be_immutable

part of 'android_large_five_bloc.dart';

/// Represents the state of AndroidLargeFive in the application.
class AndroidLargeFiveState extends Equatable {
  AndroidLargeFiveState({
    this.selectedDatesFromCalendar1,
    this.androidLargeFiveModelObj,
  });

  AndroidLargeFiveModel? androidLargeFiveModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        androidLargeFiveModelObj,
      ];

  AndroidLargeFiveState copyWith({
    List<DateTime?>? selectedDatesFromCalendar1,
    AndroidLargeFiveModel? androidLargeFiveModelObj,
  }) {
    return AndroidLargeFiveState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      androidLargeFiveModelObj:
          androidLargeFiveModelObj ?? this.androidLargeFiveModelObj,
    );
  }
}
