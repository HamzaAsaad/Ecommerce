import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_project/core/constant/applink.dart';
import 'package:first_project/data/model/prodactsmodel.dart';
import 'package:flutter/material.dart';

class CusttomListItems extends StatelessWidget {
  const CusttomListItems({super.key, required this.prodactsModel});
  final ProdactsModel prodactsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "${AppLink.imagesprodacts}/${prodactsModel.prodactsImage!}",
              height: 85,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${prodactsModel.prodactsName}",
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "cairo"),
            ),
            // Text(
            //   "${prodactsModel.prodactsDesc}",
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(fontSize: 9),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Rating",
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  children: [
                    ...List.generate(
                        5,
                        (index) => const Icon(
                              Icons.star,
                              size: 15,
                            ))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${prodactsModel.prodactsPrice}",
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


