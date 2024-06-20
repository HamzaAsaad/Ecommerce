import 'package:first_project/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late TextEditingController email;

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  goToResetPassword() {
    Get.toNamed(AppRoute.resetpassword);
  }
}
