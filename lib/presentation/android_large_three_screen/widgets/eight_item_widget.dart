import '../models/eight_item_model.dart';
import 'package:script_kiddy_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class EightItemWidget extends StatelessWidget {
  EightItemWidget(
    this.eightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightItemModel eightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 160.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomIconButton(
                height: 35.v,
                width: 34.h,
                padding: EdgeInsets.all(7.h),
                child: CustomImageView(
                  imagePath: eightItemModelObj?.remixIconsLin,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 8.v,
                  bottom: 8.v,
                ),
                child: Text(
                  eightItemModelObj.masuk!,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Text(
            eightItemModelObj.sevenHundred!,
            style: CustomTextStyles.titleLargeLexendOnPrimary,
          ),
          SizedBox(height: 7.v),
          Text(
            eightItemModelObj.tepatWaktu!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
