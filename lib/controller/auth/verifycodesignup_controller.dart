import 'package:first_project/core/class/statusrequest.dart';
import 'package:first_project/core/constant/approutes.dart';
import 'package:first_project/core/functions/handlingdatacontroller.dart';
import 'package:first_project/data/datasource/backenddata/auth/verifycodesignupdata.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goTosuccesSignUp(String verificationCode);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignupData verifycodesignupdata = VerifyCodeSignupData(Get.find());

  String? email;
  StatusRequest? statusRequest;

  @override
  goTosuccesSignUp(String verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifycodesignupdata.postdata(email!, verificationCode);
    statusRequest = handlingdData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successignup);
      } else {
        Get.defaultDialog(
            title: "Warning",
            middleText: "Phone Number Or Email Already Exists");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
