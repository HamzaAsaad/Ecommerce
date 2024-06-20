import 'package:first_project/core/class/crud.dart';
import 'package:first_project/core/constant/applink.dart';

class VerifyCodeSignupData {
  Crud crud;

  VerifyCodeSignupData(this.crud);

  postdata(String email, String verifycode) async {
    var response = await crud
        .postData(AppLink.signup, {"email": email, "verifycode": verifycode});
    return response.fold((l) => l, (r) => r);
  }
}
