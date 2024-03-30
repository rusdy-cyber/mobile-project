import 'package:script_kiddy_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:script_kiddy_s_application3/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:script_kiddy_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:script_kiddy_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:script_kiddy_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'widgets/eight_item_widget.dart';
import 'models/eight_item_model.dart';
import 'models/android_large_three_model.dart';
import 'package:script_kiddy_s_application3/widgets/custom_elevated_button.dart';
import 'widgets/nine_item_widget.dart';
import 'models/nine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/app_export.dart';
import 'bloc/android_large_three_bloc.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  const AndroidLargeThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeThreeBloc>(
      create: (context) => AndroidLargeThreeBloc(AndroidLargeThreeState(
        androidLargeThreeModelObj: AndroidLargeThreeModel(),
      ))
        ..add(AndroidLargeThreeInitialEvent()),
      child: AndroidLargeThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 4.v,
          ),
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 8.v),
              _buildEight(context),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                text: "msg_tekan_untuk_presensi".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 12.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
              SizedBox(height: 15.v),
              _buildNine(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 90.h,
      leading: Container(
        height: 64.32001.v,
        width: 76.h,
        margin: EdgeInsets.only(
          left: 14.h,
          top: 7.v,
          bottom: 7.v,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            AppbarLeadingCircleimage(
              imagePath: ImageConstant.imgClipPathGroup,
              margin: EdgeInsets.only(right: 12.h),
            ),
            AppbarLeadingImage(
              imagePath: ImageConstant.imgImage1564,
              margin: EdgeInsets.only(
                left: 50.h,
                bottom: 38.v,
              ),
            ),
          ],
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarSubtitle(
            text: "lbl_nama_pegawai".tr,
          ),
          SizedBox(height: 3.v),
          AppbarSubtitleOne(
            text: "lbl_nama_departemen".tr,
            margin: EdgeInsets.only(right: 4.h),
          ),
        ],
      ),
      actions: [
        Container(
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 26.v,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRemixIconsLin,
                height: 28.adaptSize,
                width: 28.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 11.adaptSize,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    bottom: 17.v,
                  ),
                  decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "lbl_1".tr,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_kehadiran_hari_ini".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_rekap_absen".tr,
              style: CustomTextStyles.bodyMediumManropePrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return SizedBox(
      height: 134.v,
      child: BlocSelector<AndroidLargeThreeBloc, AndroidLargeThreeState,
          AndroidLargeThreeModel?>(
        selector: (state) => state.androidLargeThreeModelObj,
        builder: (context, androidLargeThreeModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: androidLargeThreeModelObj?.eightItemList.length ?? 0,
            itemBuilder: (context, index) {
              EightItemModel model =
                  androidLargeThreeModelObj?.eightItemList[index] ??
                      EightItemModel();
              return EightItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return SizedBox(
      height: 174.v,
      child: BlocSelector<AndroidLargeThreeBloc, AndroidLargeThreeState,
          AndroidLargeThreeModel?>(
        selector: (state) => state.androidLargeThreeModelObj,
        builder: (context, androidLargeThreeModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 10.h,
              );
            },
            itemCount: androidLargeThreeModelObj?.nineItemList.length ?? 0,
            itemBuilder: (context, index) {
              NineItemModel model =
                  androidLargeThreeModelObj?.nineItemList[index] ??
                      NineItemModel();
              return NineItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
