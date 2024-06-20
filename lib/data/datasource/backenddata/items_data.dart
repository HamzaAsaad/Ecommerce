import 'package:first_project/core/class/crud.dart';
import 'package:first_project/core/constant/applink.dart';

class ItemsData {
  Crud crud;

  ItemsData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.items, {});
    return response.fold((l) => l, (r) => r);
  }
}
