import '../models/quickview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class QuickviewItemWidget extends StatelessWidget {
  QuickviewItemWidget(
    this.quickviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  QuickviewItemModel quickviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            quickviewItemModelObj.jumlahIzin!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 11.v),
          Text(
            quickviewItemModelObj.text!,
            style: CustomTextStyles.titleLargeLexendOnError,
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
