import 'package:first_project/controller/auth/verifycodesignup_controller.dart';
import 'package:first_project/core/class/statusrequest.dart';
import 'package:first_project/core/constant/appcolore.dart';
import 'package:first_project/core/constant/appimages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
        body: GetBuilder<VerifyCodeSignUpControllerImp>(
      builder: (controller) => controller.statusRequest == StatusRequest.loading
          ? Center(
              child: Lottie.asset(AppImages.loading),
            )
          : Container(
              padding: const EdgeInsets.all(1),
              child: ListView(children: [
                const SizedBox(
                  height: 40,
                ),
                const Center(
                    child: Text(
                  "Verification Code",
                  style: TextStyle(
                      fontSize: 20, fontFamily: "Cairo", color: Colors.grey),
                )),
                const SizedBox(
                  height: 35,
                ),
                const Center(
                    child: Text(
                  "Cheek Code",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "Cairo"),
                )),
                const SizedBox(
                  height: 35,
                ),
                OtpTextField(
                  fieldWidth: 50,
                  borderRadius: BorderRadius.circular(20),
                  numberOfFields: 5,
                  borderColor: AppColor.primaryColor,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goTosuccesSignUp(verificationCode);
                  }, // end onSubmit
                ),
              ]),
            ),
    ));
  }
}
