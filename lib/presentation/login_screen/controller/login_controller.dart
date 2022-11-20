import '/core/app_export.dart';
import 'package:login_screen/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController groupSixController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupSixController.dispose();
    groupSevenController.dispose();
  }
}
