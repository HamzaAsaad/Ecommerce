import 'package:first_project/controller/auth/forgetpassword_controller.dart';
import 'package:first_project/core/class/handlingdataview.dart';
import 'package:first_project/core/functions/validinput.dart';
import 'package:first_project/view/widget/auth/inkwelllauth.dart';
import 'package:first_project/view/widget/auth/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        body: GetBuilder<ForgetPasswordControllerImp>(
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
                          "Forget Password",
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
                          "Cheek Email",
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
                            return validInput(val!, 5, 50, "email");
                          },
                          mycontroller: controller.email,
                          type: TextInputType.emailAddress,
                          hinttext: "Enter the Email",
                          iconDatal: Icons.email_outlined,
                          labletext: "EMAIL ADDRESS",
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        InkwellAuth(
                            text: "Cheek",
                            onTap: () {
                              controller.ckeek();
                            }),
                      ]),
                    ),
                  ),
                )));
  }
}
