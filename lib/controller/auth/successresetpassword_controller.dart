import 'package:first_project/core/constant/approutes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordContrller extends GetxController {
  backToLogIn();
}

class SuccessResetPasswordContrllerImp extends SuccessResetPasswordContrller {
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void dispose() {
    super.dispose();
  }

  @override
  backToLogIn() {
    Get.offAllNamed(AppRoute.login);
  }
}
