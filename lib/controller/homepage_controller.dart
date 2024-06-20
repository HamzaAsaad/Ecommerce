import 'package:first_project/core/class/statusrequest.dart';
import 'package:first_project/core/constant/approutes.dart';
import 'package:first_project/core/functions/handlingdatacontroller.dart';
import 'package:first_project/core/services/services.dart';
import 'package:first_project/data/datasource/backenddata/homepage.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  initialData();
  getdata();
  goToItems(
    List categories,
    int selectedcat,
  );
}

class HomePageControllerImp extends HomePageController {
  MyServices myServices = Get.find();
  HomePageData homePageData = HomePageData(Get.find());
  String? username;
  List categories = [];
  List prodacts = [];

  StatusRequest statusRequest = StatusRequest.none;

  @override
  initialData() {}

  @override 
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homePageData.getData();

    statusRequest = handlingdData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        prodacts.addAll(response['prodacts']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(
    categories,
    selectedcat,
  ) {
    Get.toNamed(AppRoute.items, arguments: {
      'categories': categories,
      'selectedcat': selectedcat,
    });
  }
}
