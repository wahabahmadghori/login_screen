import '/core/app_export.dart';
import 'package:login_screen/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController groupFourController = TextEditingController();

  TextEditingController groupOneController = TextEditingController();

  TextEditingController groupTwoController = TextEditingController();

  TextEditingController groupThreeController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFourController.dispose();
    groupOneController.dispose();
    groupTwoController.dispose();
    groupThreeController.dispose();
  }
}
