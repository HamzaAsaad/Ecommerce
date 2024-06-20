import 'package:first_project/controller/items_controller.dart';
import 'package:first_project/core/constant/appcolore.dart';
import 'package:first_project/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                width: 25,
              ),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Categories(
              i: index,
              categoriesModel:
                  CategoriesModel.fromJson(controller.categories[index]))),
    );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  const Categories({super.key, required this.categoriesModel, required this.i});
  final CategoriesModel categoriesModel;
  final int? i;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeCat(i);
      },
      child: Column(
        children: [
          GetBuilder<ItemsControllerImp>(
            builder: (controller) => Container(
              decoration: controller.selectedcat == i
                  ? BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 5, color: AppColor.primaryColor)))
                  : null,
              child: Text(
                "${categoriesModel.categoriesName}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
