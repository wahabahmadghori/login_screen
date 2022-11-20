import 'controller/slash_controller.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/core/app_export.dart';
import 'package:login_screen/widgets/custom_button.dart';

class SlashScreen extends GetWidget<SlashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(right: 10),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgShape,
                                  height: getVerticalSize(157.00),
                                  width: getHorizontalSize(198.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 29, top: 21, right: 29),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgUndrawmobilea,
                                  height: getVerticalSize(142.00),
                                  width: getHorizontalSize(168.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 29, top: 86, right: 29),
                              child: Text("msg_get_things_done".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18
                                      .copyWith()))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(277.00),
                              margin: getMargin(left: 29, top: 41, right: 29),
                              child: Text("msg_lorem_ipsum_is".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular12
                                      .copyWith()))),
                      CustomButton(
                          width: 315,
                          text: "lbl_get_started".tr,
                          margin: getMargin(
                              left: 29, top: 90, right: 29, bottom: 20),
                          onTap: onTapBtnGetstarted,
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapBtnGetstarted() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
