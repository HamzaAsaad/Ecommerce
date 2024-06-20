import 'package:first_project/controller/onboarding_controller.dart';
import 'package:first_project/core/constant/appcolore.dart';
import 'package:first_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingScaffold extends GetView<OnboardingControllerImp> {
  const 
  OnboardingScaffold({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (value) {
          controller.changedpage(value);
        },
        itemCount: onboardingList.length,
        itemBuilder: (context, i) => Column(children: [
              Image.asset(
                onboardingList[i].image!,
                width: 320,
                fit: BoxFit.fill,
              ),
              Text(
                onboardingList[i].body!,
                style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                onboardingList[i].center!,
                style: const TextStyle(
                    fontFamily: "Kalam",
                    color: Color.fromARGB(255, 54, 54, 54),
                    fontSize: 14),
              ),
            ]));
  }
}
