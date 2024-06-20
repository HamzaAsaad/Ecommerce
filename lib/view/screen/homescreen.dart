import 'package:first_project/controller/homescreen_controller.dart';
import 'package:first_project/core/constant/appcolore.dart';
import 'package:first_project/view/widget/home/bottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
          floatingActionButton: FloatingActionButton(
            
            backgroundColor: AppColor.primaryColor,
            onPressed: () {},
            child: const Icon(Icons.shopping_basket_outlined),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const BottomAppbarHome(),
          body: controller.listPage.elementAt(controller.currentpage)),
    );
  }
}
