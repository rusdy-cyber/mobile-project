import 'models/android_large_one_model.dart';
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/app_export.dart';
import 'bloc/android_large_one_bloc.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeOneBloc>(
      create: (context) => AndroidLargeOneBloc(AndroidLargeOneState(
        androidLargeOneModelObj: AndroidLargeOneModel(),
      ))
        ..add(AndroidLargeOneInitialEvent()),
      child: AndroidLargeOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeOneBloc, AndroidLargeOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 7.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1,
                    height: 92.adaptSize,
                    width: 92.adaptSize,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_presensiapp".tr,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
