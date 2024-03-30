import 'package:script_kiddy_s_application3/widgets/custom_text_form_field.dart';
import 'package:script_kiddy_s_application3/widgets/custom_elevated_button.dart';
import 'models/android_large_two_model.dart';
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/app_export.dart';
import 'bloc/android_large_two_bloc.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  const AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwoBloc>(
      create: (context) => AndroidLargeTwoBloc(AndroidLargeTwoState(
        androidLargeTwoModelObj: AndroidLargeTwoModel(),
      ))
        ..add(AndroidLargeTwoInitialEvent()),
      child: AndroidLargeTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 48.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage1,
                height: 92.adaptSize,
                width: 92.adaptSize,
              ),
              SizedBox(height: 11.v),
              Container(
                width: 248.h,
                margin: EdgeInsets.only(
                  left: 43.h,
                  right: 45.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_selamat_datang_di2".tr,
                        style: CustomTextStyles.headlineLargeff101317.copyWith(
                          height: 1.25,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_presensiapp".tr,
                        style: CustomTextStyles.headlineLargeff12a3da,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "msg_halo_silakan_masuk".tr,
                style: CustomTextStyles.bodyMediumManropeBluegray20001,
              ),
              SizedBox(height: 18.v),
              BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState,
                  TextEditingController?>(
                selector: (state) => state.addressController,
                builder: (context, addressController) {
                  return CustomTextFormField(
                    controller: addressController,
                    hintText: "msg_invalid_gmail_address".tr.toUpperCase(),
                  );
                },
              ),
              SizedBox(height: 30.v),
              _buildTwentyFive(context),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_masuk".tr,
              ),
              SizedBox(height: 20.v),
              Text(
                "msg_masuk_dengan_sidik".tr,
                style: CustomTextStyles.bodyLargeLexendBlack900,
              ),
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: ImageConstant.imgFingerprintFil,
                width: 39.h,
              ),
              SizedBox(height: 61.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_belum_punya_akun2".tr,
                      style: CustomTextStyles.bodyMediumManropeff101317,
                    ),
                    TextSpan(
                      text: "lbl_daftar".tr,
                      style: CustomTextStyles.bodyMediumManropeff9b59b6,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return SizedBox(
      height: 83.v,
      width: 337.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<AndroidLargeTwoBloc, AndroidLargeTwoState>(
                    builder: (context, state) {
                      return CustomTextFormField(
                        controller: state.eyeController,
                        textInputAction: TextInputAction.done,
                        suffix: InkWell(
                          onTap: () {
                            context.read<AndroidLargeTwoBloc>().add(
                                ChangePasswordVisibilityEvent(
                                    value: !state.isShowPassword));
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 14.v, 18.h, 14.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 52.v,
                        ),
                        obscureText: state.isShowPassword,
                      );
                    },
                  ),
                  SizedBox(height: 4.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVideoCamera,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_wrong_password".tr.toUpperCase(),
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "lbl_lupa_password".tr,
              style: CustomTextStyles.bodyMediumManropePurple400,
            ),
          ),
        ],
      ),
    );
  }
}
