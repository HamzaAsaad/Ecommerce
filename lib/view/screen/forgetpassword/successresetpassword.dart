import 'package:first_project/controller/auth/successresetpassword_controller.dart';
import 'package:first_project/core/constant/appcolore.dart';
import 'package:first_project/view/widget/auth/inkwelllauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPaswword extends StatelessWidget {
  const SuccessResetPaswword({super.key});
  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordContrllerImp controller =
        Get.put(SuccessResetPasswordContrllerImp());
    return Scaffold(
        body: ListView(children: [
      const SizedBox(
        height: 40,
      ),
      const Center(
          child: Text(
        "Save Password",
        style: TextStyle(fontSize: 20, fontFamily: "Cairo", color: Colors.grey),
      )),
      const SizedBox(
        height: 35,
      ),
      Icon(
        Icons.check_circle_outline,
        size: 150,
        color: AppColor.primaryColor,
      ),
      const SizedBox(
        height: 275,
      ),
      InkwellAuth(
          text: "  Login",
          onTap: () {
            controller.backToLogIn();
          }),
    ]));
  }
}
