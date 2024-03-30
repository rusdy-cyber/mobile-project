// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'quickview_item_model.dart';

/// This class defines the variables used in the [android_large_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeFiveModel extends Equatable {
  AndroidLargeFiveModel({this.quickviewItemList = const []}) {}

  List<QuickviewItemModel> quickviewItemList;

  AndroidLargeFiveModel copyWith(
      {List<QuickviewItemModel>? quickviewItemList}) {
    return AndroidLargeFiveModel(
      quickviewItemList: quickviewItemList ?? this.quickviewItemList,
    );
  }

  @override
  List<Object?> get props => [quickviewItemList];
}
