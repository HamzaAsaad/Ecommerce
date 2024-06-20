import 'package:first_project/core/class/statusrequest.dart';
import 'package:first_project/core/constant/approutes.dart';
import 'package:first_project/core/functions/handlingdatacontroller.dart';
import 'package:first_project/data/datasource/backenddata/forgetpassword/checkemaildata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  ckeek();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  ckeek() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postdata(email.text);
      statusRequest = handlingdData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.resetpassword,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "Warning", middleText: " Email is Not Found");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToVerifyCode() {}
}
