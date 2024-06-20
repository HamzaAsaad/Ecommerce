import 'package:first_project/controller/homepage_controller.dart';
import 'package:first_project/core/class/handlingdataview.dart';
import 'package:first_project/view/widget/home/customappbar.dart';
import 'package:first_project/view/widget/home/cardhome.dart';
import 'package:first_project/view/widget/home/listcategorieshome.dart';
import 'package:first_project/view/widget/home/listprodacthome.dart';
import 'package:first_project/view/widget/home/titlehome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return GetBuilder<HomePageControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: ListView(
                children: [
                  CustomAppBar(
                    hinttitle: "Find Product",
                    onPressednoti: () {},
                    onPressedsearch: () {},
                  ),
                  const CardHome(
                      titletext: "A Summer Surprise",
                      subtitletext: "Cashback 20%"),
                  const TitletHome(title: "Categories"),
                  const ListCategoriesHome(),
                  const TitletHome(title: "Prodact For You"),
                  const ListProdactHome(),
                ],
              ),
            )));
  }
}
