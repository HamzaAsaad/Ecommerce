import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Future<bool> alertexitApp() {
  Get.defaultDialog(
      title: "Alert",
      middleText: "Do you want exit from the app",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: const Text("Yes")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("No"))
      ]);
  return Future.value(true);
}
