import 'package:first_project/core/class/statusrequest.dart';
import 'package:first_project/core/constant/approutes.dart';
import 'package:first_project/core/functions/handlingdatacontroller.dart';
import 'package:first_project/data/datasource/backenddata/forgetpassword/resetpassworddata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  save();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
   StatusRequest statusRequest =  StatusRequest.none;
  String? email;

  late TextEditingController password;
  late TextEditingController passwordConfirmation;

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    passwordConfirmation = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    passwordConfirmation.dispose();
    super.dispose();
  }
 
  @override
  save() async {
    if (password.text != passwordConfirmation.text) {
      return Get.defaultDialog(
          title: "Warnning", middleText: "Password not match");
    }
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postdata(email!, password.text);
      statusRequest = handlingdData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.toNamed(AppRoute.succesresetpassword);
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Again ");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }
}
