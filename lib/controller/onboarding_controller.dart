import 'package:first_project/core/constant/approutes.dart';
import 'package:first_project/core/services/services.dart';
import 'package:first_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  skip();
  changedpage(int index);
}

class OnboardingControllerImp extends OnBoardingController {
  int currentpage = 0;
  late PageController pagecontroller;

  MyServices myServices = Get.find();

  @override
  changedpage(index) {
    currentpage = index;
    update();
  }

  @override
  next() {
    currentpage++;
    if (currentpage > onboardingList.length - 1) {
      myServices.sharedpreferences.setString("step", "1");
      Get.offAllNamed(AppRoute.login);
    } else {
      (pagecontroller.animateToPage(currentpage,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut));
    }
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }

  @override
  skip() {
    Get.toNamed(AppRoute.login);
  }
}
