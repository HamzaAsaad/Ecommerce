import 'package:first_project/core/constant/appcolore.dart';
import 'package:flutter/material.dart';

class InkwellAuth extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const InkwellAuth({super.key, required this.text, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(50)),
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 55, right: 40),
      margin: const EdgeInsets.symmetric(horizontal: 90),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
