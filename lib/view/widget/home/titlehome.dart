import 'package:flutter/material.dart';

class TitletHome extends StatelessWidget {
  const TitletHome({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }
}
