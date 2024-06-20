import 'package:first_project/core/class/statusrequest.dart';
import 'package:first_project/core/constant/approutes.dart';
import 'package:first_project/core/functions/handlingdatacontroller.dart';
import 'package:first_project/data/datasource/backenddata/auth/signupdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToVerifyCodeSignUp();
}

class SignUPControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  // List data = [];
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  StatusRequest statusRequest = StatusRequest.none;

  SignupData signupData = SignupData(Get.find());
  List data = [];
  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postdata(
          username.text, password.text, phone.text, email.text);
      statusRequest = handlingdData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verifycodesignup,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "Warning",
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  goToVerifyCodeSignUp() {}
}
