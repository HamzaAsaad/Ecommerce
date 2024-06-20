import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final IconData iconDatal;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final TextInputType? type;
  final bool? obscureText;
  final void Function()? onTapIcon;
  const CustomTextFormField(
      {super.key,
      required this.hinttext,
      required this.labletext,
      required this.iconDatal,
      required this.mycontroller,
      required this.valid,
      required this.type,
      this.obscureText,
      this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          obscureText:
              obscureText == null || obscureText == false ? false : true,
          keyboardType: type,
          validator: valid,
          controller: mycontroller,
          decoration: InputDecoration(
              suffixIcon: InkWell(
                onTap: onTapIcon,
                child: Icon(
                  iconDatal,
                ),
              ),
              hintText: hinttext,
              hintStyle: const TextStyle(fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  labletext,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cairo",
                  ),
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        ));
  }
}
