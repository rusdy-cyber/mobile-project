import 'package:script_kiddy_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:script_kiddy_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:script_kiddy_s_application3/widgets/app_bar/appbar_title.dart';
import 'widgets/quickview_item_widget.dart';
import 'models/quickview_item_model.dart';
import 'models/android_large_five_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/app_export.dart';
import 'bloc/android_large_five_bloc.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  const AndroidLargeFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFiveBloc>(
      create: (context) => AndroidLargeFiveBloc(AndroidLargeFiveState(
        androidLargeFiveModelObj: AndroidLargeFiveModel(),
      ))
        ..add(AndroidLargeFiveInitialEvent()),
      child: AndroidLargeFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              _buildQuickView(context),
              SizedBox(height: 26.v),
              _buildHeading(context),
              SizedBox(height: 35.v),
              _buildCalender(context),
              SizedBox(height: 31.v),
              _buildHeader(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 62.v,
      leadingWidth: 33.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 17.v,
          bottom: 23.v,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      title: AppbarTitle(
        text: "lbl_riwayat_absensi".tr,
        margin: EdgeInsets.only(left: 33.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: BlocSelector<AndroidLargeFiveBloc, AndroidLargeFiveState,
          AndroidLargeFiveModel?>(
        selector: (state) => state.androidLargeFiveModelObj,
        builder: (context, androidLargeFiveModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 95.v,
              crossAxisCount: 2,
              mainAxisSpacing: 11.h,
              crossAxisSpacing: 11.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: androidLargeFiveModelObj?.quickviewItemList.length ?? 0,
            itemBuilder: (context, index) {
              QuickviewItemModel model =
                  androidLargeFiveModelObj?.quickviewItemList[index] ??
                      QuickviewItemModel();
              return QuickviewItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHeading(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftBlueGray900,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_december_2023".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalender(BuildContext context) {
    return BlocBuilder<AndroidLargeFiveBloc, AndroidLargeFiveState>(
      builder: (context, state) {
        return SizedBox(
          height: 215.v,
          width: 334.h,
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.multi,
              firstDate: DateTime(DateTime.now().year - 5),
              lastDate: DateTime(DateTime.now().year + 5),
              selectedDayHighlightColor: Color(0XFFEFF4FF),
              firstDayOfWeek: 0,
              selectedDayTextStyle: TextStyle(
                color: Color(0XFFE74C3C),
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
              ),
              dayTextStyle: TextStyle(
                color: appTheme.blueGray200,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
              ),
              disabledDayTextStyle: TextStyle(
                color: appTheme.blueGray200,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
              ),
              dayBorderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
            value: state.selectedDatesFromCalendar1 ?? [],
            onValueChanged: (dates) {
              state.selectedDatesFromCalendar1 = dates;
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_aktivitas".tr,
            style: theme.textTheme.titleMedium,
          ),
          Text(
            "lbl_lihat_semua".tr,
            style: CustomTextStyles.bodyMediumManropePrimary,
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
