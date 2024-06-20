import 'package:first_project/core/class/crud.dart';
import 'package:first_project/core/constant/applink.dart';

class ResetPasswordData {
  Crud crud;

  ResetPasswordData(this.crud);

  postdata(String email, String password) async {
    var response = await crud.postData(
        AppLink.resetpassword, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}
