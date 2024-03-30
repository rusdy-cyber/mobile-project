import '../models/nine_item_model.dart';
import 'package:script_kiddy_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class NineItemWidget extends StatelessWidget {
  NineItemWidget(
    this.nineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NineItemModel nineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup106,
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: 160.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              nineItemModelObj.izinAbsen!,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 128.h,
            margin: EdgeInsets.only(left: 2.h),
            child: Text(
              nineItemModelObj.isiFormUntukMeminta!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 46.v),
          CustomElevatedButton(
            height: 34.v,
            width: 135.h,
            text: "lbl_ajukan_izin".tr,
            margin: EdgeInsets.only(left: 2.h),
            buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray900,
          ),
        ],
      ),
    );
  }
}
