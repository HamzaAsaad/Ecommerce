import 'package:first_project/controller/auth/login_controller.dart';
import 'package:first_project/core/class/handlingdataview.dart';
import 'package:first_project/core/constant/appcolore.dart';
import 'package:first_project/core/constant/appimages.dart';
import 'package:first_project/core/functions/alertexitapp.dart';
import 'package:first_project/core/functions/validinput.dart';
import 'package:first_project/view/widget/auth/customtextformfield.dart';
import 'package:first_project/view/widget/auth/inkwelllauth.dart';
import 'package:first_project/view/widget/auth/signup/inkwellsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());

    return Scaffold(
        // ignore: deprecated_member_use
        body: WillPopScope(
            onWillPop: alertexitApp,
            child: GetBuilder<LoginControllerImp>(
                builder: (controller) => HandlingDataRequest(
                      statusRequest: controller.statusRequest,
                      widget: Container(
                        padding: const EdgeInsets.all(0.1),
                        child: Form(
                          key: controller.formState,
                          child: ListView(children: [
                            Image.asset(
                              AppImages.login,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            CustomTextFormField(
                              valid: (val) {
                                return validInput(val!, 4, 50, "email");
                              },
                              mycontroller: controller.email,
                              type: TextInputType.emailAddress,
                              hinttext: "11".tr,
                              iconDatal: Icons.email_outlined,
                              labletext: "10".tr,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GetBuilder<LoginControllerImp>(
                              builder: (controller) => CustomTextFormField(
                                valid: (val) {
                                  return validInput(val!, 8, 50, "password");
                                },
                                mycontroller: controller.password,
                                type: TextInputType.visiblePassword,
                                hinttext: "13".tr,
                                iconDatal: Icons.visibility,
                                labletext: "12".tr,
                                obscureText: controller.isShowPass,
                                onTapIcon: () {
                                  controller.showPass();
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      controller.goToForgetPassword();
                                    },
                                    child: Text(
                                      "14".tr,
                                      style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "PlayfairDisplay"),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            InkwellAuth(
                              onTap: () {
                                controller.login();
                              },
                              text: "15".tr,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            InkwellSignUp(
                              text: "17".tr,
                              onTap: () {
                                controller.goToSignUp();
                              },
                            )
                          ]),
                        ),
                      ),
                    ))));
  }
}
