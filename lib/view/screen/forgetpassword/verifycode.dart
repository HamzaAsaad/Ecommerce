import 'package:first_project/controller/auth/verifycode_controller.dart';
import 'package:first_project/core/constant/appcolore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});
  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        body: ListView(children: [
      const SizedBox(
        height: 40,
      ),
      const Center(
          child: Text(
        "Verification Code",
        style: TextStyle(fontSize: 20, fontFamily: "Cairo", color: Colors.grey),
      )),
      const SizedBox(
        height: 35,
      ),
      const Center(
          child: Text(
        "Cheek Code",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "Cairo"),
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
          controller.goToResetPassword();
        }, // end onSubmit
      ),
    ]));
  }
}
