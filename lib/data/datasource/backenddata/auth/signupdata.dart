import 'package:first_project/core/class/crud.dart';
import 'package:first_project/core/constant/applink.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postdata(String username, String password, String phone, String email) async {
    var response = await crud.postData(AppLink.signup, {
      "username": username,
      "password": password,
      "phone": phone,
      "email": email
    });
    return response.fold((l) => l, (r) => r);
  }
}
