import 'package:first_project/controller/homescreen_controller.dart';
import 'package:first_project/view/widget/home/inkwellbottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomAppbarHome extends StatelessWidget {
  const BottomAppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => BottomAppBar(          
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: [
            Row(
              children: [
                InkwellBottomAppbarHome(
                    active: controller.currentpage == 0 ? true : false,
                    textIcon: "Home",
                    icon: Icons.home,
                    onTap: () {
                      controller.changPage(0);
                    }),
                const SizedBox(
                  width: 50,
                ),
                InkwellBottomAppbarHome(
                    active: controller.currentpage == 1 ? true : false,
                    textIcon: "Setting",
                    icon: Icons.settings,
                    onTap: () {
                      controller.changPage(1);
                    }),
                const SizedBox(
                  width: 60,
                )
              ],
            ),
            Row(
              children: [
                InkwellBottomAppbarHome(
                    active: controller.currentpage == 2 ? true : false,
                    textIcon: "Profile",
                    icon: Icons.account_circle_outlined,
                    onTap: () {
                      controller.changPage(2);
                    }),
                const SizedBox(
                  width: 35,
                ),
                InkwellBottomAppbarHome(
                    active: controller.currentpage == 3 ? true : false,
                    textIcon: "Favorite",
                    icon: Icons.favorite,
                    onTap: () {
                      controller.changPage(3);
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
