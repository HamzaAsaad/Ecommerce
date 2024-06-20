import 'package:first_project/core/constant/approutes.dart';
import 'package:first_project/core/localization/changelocal.dart';
import 'package:first_project/view/widget/onboarding/language/buttonlanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: const TextStyle(
                  fontSize: 15,
                  fontFamily: "PlayfairDisplay",
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ButtonLanguage(
              textbutton: "AR",
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onboarding);
              },
            ),
            ButtonLanguage(
              textbutton: "En",
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.onboarding);
              },
            )
          ],
        ),
      ),
    );
  }
}
