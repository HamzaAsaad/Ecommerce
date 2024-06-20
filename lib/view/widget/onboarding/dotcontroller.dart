import 'package:first_project/controller/onboarding_controller.dart';
import 'package:first_project/core/constant/appcolore.dart';
import 'package:first_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotController extends StatelessWidget {
  const DotController({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onboardingList.length,
                  (index) => AnimatedContainer(
                      margin: const EdgeInsets.only(right: 5),
                      duration: const Duration(milliseconds: 900),
                      width: controller.currentpage == index ? 18 : 5,
                      height: 6,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)))),
                ),
              ],
            ));
  }
}
