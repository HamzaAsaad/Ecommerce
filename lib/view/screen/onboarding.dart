import 'package:first_project/controller/onboarding_controller.dart';
import 'package:first_project/view/widget/onboarding/dotcontroller.dart';
import 'package:first_project/view/widget/onboarding/nextbutton.dart';
import 'package:first_project/view/widget/onboarding/scaffold.dart';
import 'package:first_project/view/widget/onboarding/skipbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/widgets.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 25),
        child: const SafeArea(
          child: Column(
            children: [
              Expanded(flex: 5, child: OnboardingScaffold()),
              Expanded(
                  flex: 2,
                  child: Column(children: [
                    DotController(),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NextButton(),
                        SkipButton(),
                      ],
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
