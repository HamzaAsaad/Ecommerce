import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome(
      {super.key, required this.titletext, required this.subtitletext});
  final String titletext;
  final String subtitletext;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text(
                  titletext,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                subtitle: Text(
                  subtitletext,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(160)),
              ),
            )
          ],
        ));
  }
}
