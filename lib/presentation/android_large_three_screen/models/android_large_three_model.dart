// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'eight_item_model.dart';
import 'nine_item_model.dart';

/// This class defines the variables used in the [android_large_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeThreeModel extends Equatable {
  AndroidLargeThreeModel({
    this.eightItemList = const [],
    this.nineItemList = const [],
  }) {}

  List<EightItemModel> eightItemList;

  List<NineItemModel> nineItemList;

  AndroidLargeThreeModel copyWith({
    List<EightItemModel>? eightItemList,
    List<NineItemModel>? nineItemList,
  }) {
    return AndroidLargeThreeModel(
      eightItemList: eightItemList ?? this.eightItemList,
      nineItemList: nineItemList ?? this.nineItemList,
    );
  }

  @override
  List<Object?> get props => [eightItemList, nineItemList];
}
