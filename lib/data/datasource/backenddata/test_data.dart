import 'package:first_project/core/class/crud.dart';
import 'package:first_project/core/constant/applink.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }
}
