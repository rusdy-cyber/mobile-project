import 'package:script_kiddy_s_application3/widgets/custom_elevated_button.dart';
import 'models/android_large_four_model.dart';
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/app_export.dart';
import 'bloc/android_large_four_bloc.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeFourBottomsheet extends StatelessWidget {
  const AndroidLargeFourBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourBloc>(
      create: (context) => AndroidLargeFourBloc(AndroidLargeFourState(
        androidLargeFourModelObj: AndroidLargeFourModel(),
      ))
        ..add(AndroidLargeFourInitialEvent()),
      child: AndroidLargeFourBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 41.v,
        ),
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(
                "lbl_presensi_masuk".tr,
                style: CustomTextStyles.headlineSmallGray900,
              ),
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRemixIconsFil,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 11.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_tanggal_masuk".tr,
                          style: CustomTextStyles.titleMediumGray900,
                        ),
                        Text(
                          "msg_selasa_23_agustus".tr,
                          style: CustomTextStyles.bodyMediumManropeGray600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRemixIconsLinRed500,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      bottom: 9.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_jam_masuk".tr,
                          style: CustomTextStyles.titleMediumGray900,
                        ),
                        Text(
                          "lbl_07_03_23".tr,
                          style: CustomTextStyles.bodyMediumManropeGray600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.v),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(
                "msg_foto_selfie_di_area".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 9.v),
            _buildFrameFive(context),
            SizedBox(height: 19.v),
            CustomElevatedButton(
              text: "lbl_hadir".tr,
              margin: EdgeInsets.only(left: 7.h),
            ),
            SizedBox(height: 11.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7.h),
      padding: EdgeInsets.all(95.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRemixIconsFilBlueGray600,
            height: 45.adaptSize,
            width: 45.adaptSize,
          ),
          SizedBox(height: 12.v),
          Text(
            "lbl_ambil_gambar".tr,
            style: CustomTextStyles.titleLargeBluegray600,
          ),
        ],
      ),
    );
  }
}
