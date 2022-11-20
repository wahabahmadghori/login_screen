import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/core/app_export.dart';
import 'package:login_screen/core/utils/validation_functions.dart';
import 'package:login_screen/widgets/custom_button.dart';
import 'package:login_screen/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(151.00),
                                      width: getHorizontalSize(198.00),
                                      margin: getMargin(right: 10),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgShape,
                                                    height:
                                                        getVerticalSize(151.00),
                                                    width: getHorizontalSize(
                                                        198.00))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapImgArrowleft();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 32,
                                                            top: 15,
                                                            right: 32,
                                                            bottom: 15),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowleft,
                                                            height:
                                                                getSize(21.00),
                                                            width: getSize(
                                                                21.00)))))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 90, top: 26, right: 90),
                                      child: Text("lbl_welcome_onbard".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold18
                                              .copyWith()))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 32, top: 25, right: 32),
                                      child: Text("msg_let_s_help_you".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12
                                              .copyWith()))),
                              CustomTextFormField(
                                  width: 297,
                                  focusNode: FocusNode(),
                                  controller: controller.groupFourController,
                                  hintText: "msg_enter_your_full".tr,
                                  margin:
                                      getMargin(left: 32, top: 74, right: 32),
                                  padding: TextFormFieldPadding.PaddingTB23,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 297,
                                  focusNode: FocusNode(),
                                  controller: controller.groupOneController,
                                  hintText: "lbl_enter_you_email".tr,
                                  margin:
                                      getMargin(left: 32, top: 15, right: 32),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 297,
                                  focusNode: FocusNode(),
                                  controller: controller.groupTwoController,
                                  hintText: "lbl_create_password".tr,
                                  margin:
                                      getMargin(left: 32, top: 15, right: 32),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomTextFormField(
                                  width: 297,
                                  focusNode: FocusNode(),
                                  controller: controller.groupThreeController,
                                  hintText: "msg_confirm_passwor".tr,
                                  margin:
                                      getMargin(left: 32, top: 15, right: 32),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 315,
                                  text: "lbl_register".tr,
                                  margin:
                                      getMargin(left: 32, top: 45, right: 28),
                                  onTap: onTapBtnRegister,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 32,
                                          top: 11,
                                          right: 32,
                                          bottom: 20),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_already_have_an2".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "lbl_sign_up".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.cyan300,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w500))
                                          ]),
                                          textAlign: TextAlign.left)))
                            ])))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.slashScreen);
  }

  onTapBtnRegister() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
