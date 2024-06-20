import 'package:first_project/bindings/initialbindings.dart';
import 'package:first_project/core/localization/changelocal.dart';
import 'package:first_project/core/localization/translation.dart';
import 'package:first_project/core/services/services.dart';
import 'package:first_project/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: ThemeData(),
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
