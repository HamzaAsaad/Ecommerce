import 'package:first_project/core/class/statusrequest.dart';
import 'package:first_project/core/functions/handlingdatacontroller.dart';
import 'package:first_project/data/datasource/backenddata/items_data.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(val);
  getItems();
}

class ItemsControllerImp extends ItemsController {
   late StatusRequest statusRequest;
  List categories = [];
  ItemsData itemsData = ItemsData(Get.find());
  int? selectedcat;
  List data = [];
  String? catId;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedcat = Get.arguments['selectedcat'];
    catId = Get.arguments['categoryid'];
    getItems();
  }

  @override
  changeCat(val) {
    selectedcat = val;
    update();
  }

  @override
  getItems() async {
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData();
    statusRequest = handlingdData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
