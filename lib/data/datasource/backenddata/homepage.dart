import 'package:first_project/core/class/crud.dart';
import 'package:first_project/core/constant/applink.dart';

class HomePageData {
  Crud crud;

  HomePageData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }
}
