import 'package:first_project/controller/homepage_controller.dart';
import 'package:first_project/core/constant/applink.dart';
import 'package:first_project/data/model/prodactsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProdactHome extends GetView<HomePageControllerImp> {
  const ListProdactHome({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.prodacts.length,
          itemBuilder: (context, index) => Prodacts(
              prodactsModel:
                  ProdactsModel.fromJson(controller.prodacts[index]))),
    );
  }
}

class Prodacts extends StatelessWidget {
  const Prodacts({super.key, required this.prodactsModel});
  final ProdactsModel prodactsModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.network(
            "${AppLink.imagesprodacts}/${prodactsModel.prodactsImage}",
            height: 100,
            width: 150,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          height: 130,
          width: 210,
        ),
        Positioned(
          bottom: 75,
          left: 40,
          child: Text(
            "${prodactsModel.prodactsName}",
            style: const TextStyle(fontSize: 11),
          ),
        )
      ],
    );
  }
}
