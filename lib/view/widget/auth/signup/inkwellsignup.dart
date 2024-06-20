import 'package:first_project/core/constant/appcolore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InkwellSignUp extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const InkwellSignUp({super.key, required this.text, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("16".tr),
        InkWell(
          onTap: onTap,
          child: Text(
            text,
            style: TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontFamily: "PlayfairDisplay"),
          ),
        )
      ],
    );
  }
}
