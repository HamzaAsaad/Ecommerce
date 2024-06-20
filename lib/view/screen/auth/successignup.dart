import 'package:first_project/controller/auth/successignup_controller.dart';
import 'package:first_project/view/widget/auth/inkwelllauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
        body: ListView(children: [
      const SizedBox(
        height: 40,
      ),
      const Center(
          child: Text(
        "Sign Up",
        style: TextStyle(fontSize: 20, fontFamily: "Cairo", color: Colors.grey),
      )),
      const SizedBox(
        height: 35,
      ),
      const Icon(
        Icons.check_circle_outline,
        size: 150,
      ),
      const SizedBox(
        height: 275,
      ),
      InkwellAuth(
          text: " LogIn",
          onTap: () {
            controller.backToLogIn();
          }),
    ]));
  }
}
