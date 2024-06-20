import 'package:first_project/controller/items_controller.dart';
import 'package:first_project/core/class/handlingdataview.dart';
import 'package:first_project/data/model/prodactsmodel.dart';
import 'package:first_project/view/widget/home/customappbar.dart';
import 'package:first_project/view/widget/home/listcategoriesitems.dart';
import 'package:first_project/view/widget/items/custtomlistitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const CustomAppBar(hinttitle: "Search"),
            const SizedBox(
              height: 10,
            ),
            const ListCategoriesItems(),
            GetBuilder<ItemsControllerImp>(
                builder: (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (BuildContext context, index) {
                          return CusttomListItems(
                              prodactsModel: ProdactsModel.fromJson(
                                  controller.data[index]));
                        })))
          ],
        ),
      ),
    );
  }
}
