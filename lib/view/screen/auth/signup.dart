import 'package:first_project/controller/auth/signup_controller.dart';
import 'package:first_project/core/class/handlingdataview.dart';
import 'package:first_project/core/constant/appimages.dart';
import 'package:first_project/core/functions/alertexitapp.dart';
import 'package:first_project/core/functions/validinput.dart';
import 'package:first_project/view/widget/auth/customtextformfield.dart';
import 'package:first_project/view/widget/auth/inkwelllauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUPControllerImp());
    return Scaffold(
        // ignore: deprecated_member_use
        body: WillPopScope(
            onWillPop: alertexitApp,
            child: GetBuilder<SignUPControllerImp>(
                builder: (controller) => HandlingDataRequest(
                      statusRequest: controller.statusRequest,
                      widget: Container(
                        padding: const EdgeInsets.all(0.1),
                        child: Form(
                          key: controller.formState,
                          child: ListView(children: [
                            Image.asset(
                              AppImages.signup,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 2, 20, "username");
                                },
                                mycontroller: controller.username,
                                type: TextInputType.name,
                                hinttext: "Enter The UserName",
                                labletext: "USER NAME",
                                iconDatal: Icons.account_box_rounded),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                              valid: (val) {
                                return validInput(val!, 5, 50, "email");
                              },
                              mycontroller: controller.email,
                              type: TextInputType.emailAddress,
                              hinttext: "Enter The Email",
                              iconDatal: Icons.email_outlined,
                              labletext: "EMAIL ADDRESS",
                            ),
                            const SizedBox(
                              height: 20,
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
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                              valid: (val) {
                                return validInput(val!, 5, 25, "phone");
                              },
                              mycontroller: controller.phone,
                              type: TextInputType.phone,
                              hinttext: "Enter The Phone",
                              iconDatal: Icons.visibility,
                              labletext: "PHONE NUMBER",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            InkwellAuth(
                              onTap: () {
                                controller.signUp();
                              },
                              text: "Sign Up",
                            ),
                          ]),
                        ),
                      ),
                    ))));
  }
}
