import 'package:first_project/controller/auth/resetpassword_controller.dart';
import 'package:first_project/core/class/handlingdataview.dart';
import 'package:first_project/core/functions/validinput.dart';
import 'package:first_project/view/widget/auth/inkwelllauth.dart';
import 'package:first_project/view/widget/auth/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
        body: GetBuilder<ResetPasswordControllerImp>(
            builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.all(1),
                    child: Form(
                      key: controller.formState,
                      child: ListView(children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                            child: Text(
                          "Reset Password",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Cairo",
                              color: Colors.grey),
                        )),
                        const SizedBox(
                          height: 35,
                        ),
                        const Center(
                            child: Text(
                          "Enter Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "Cairo"),
                        )),
                        const SizedBox(
                          height: 35,
                        ),
                        CustomTextFormField(
                          valid: (val) {
                            return validInput(val!, 8, 50, "password");
                          },
                          mycontroller: controller.password,
                          type: TextInputType.visiblePassword,
                          hinttext: "Enter Password",
                          iconDatal: Icons.visibility,
                          labletext: "PASSWORD",
                        ),
                        const SizedBox(height: 15),
                        CustomTextFormField(
                          valid: (val) {
                            return validInput(val!, 8, 50, "password");
                          },
                          mycontroller: controller.passwordConfirmation,
                          type: TextInputType.visiblePassword,
                          hinttext: "Re Enter Password",
                          iconDatal: Icons.visibility,
                          labletext: " PASSWORD",
                        ),
                        const SizedBox(height: 15),
                        InkwellAuth(
                            text: "  Save",
                            onTap: () {
                              controller.save();
                            })
                      ]),
                    ),
                  ),
                )));
  }
}
