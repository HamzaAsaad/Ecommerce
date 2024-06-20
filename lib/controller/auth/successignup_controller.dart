import 'package:first_project/core/constant/approutes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  backToLogIn();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {

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
