import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:first_project/core/class/statusrequest.dart';
import 'package:first_project/core/constant/approutes.dart';
import 'package:first_project/core/functions/handlingdatacontroller.dart';
import 'package:first_project/core/services/services.dart';
import 'package:first_project/data/datasource/backenddata/auth/logindata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  LoginData logindata = LoginData(Get.find());
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController email;
  late TextEditingController password;
  bool isShowPass = true;

  showPass() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  goToForgetPassword() {
    Get.offNamed(AppRoute.forgetpassword);
  }

  @override
  login() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await logindata.postdata(email.text, password.text);
      statusRequest = handlingdData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedpreferences
              .setString("id", response['data']['users_id'].toString());
          myServices.sharedpreferences
              .setString("username", response['data']['users_name'].toString());
          myServices.sharedpreferences
              .setString("email", response['data']['users_email'].toString());
          myServices.sharedpreferences
              .setString("phone", response['data']['users_phone'].toString());
          myServices.sharedpreferences.setString("step", "2");
          Get.offNamed(
            AppRoute.homepage,
          );
        } else {
          Get.defaultDialog(
              title: "Warning",
              middleText: "Email Or Password are not correct ");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      // ignore: avoid_print
      print(
          "----------------------------------$value------------------------------------------");
      // ignore: unused_local_variable
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
