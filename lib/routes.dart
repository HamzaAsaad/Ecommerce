import 'package:first_project/core/constant/approutes.dart';
// import 'package:first_project/core/middleware/mymiddleware.dart';
import 'package:first_project/view/screen/auth/successignup.dart';
import 'package:first_project/view/screen/auth/verifycodesignup.dart';
import 'package:first_project/view/screen/forgetpassword/forgetpassword.dart';
import 'package:first_project/view/screen/auth/login.dart';
import 'package:first_project/view/screen/forgetpassword/resetpassword.dart';
import 'package:first_project/view/screen/auth/signup.dart';
import 'package:first_project/view/screen/forgetpassword/successresetpassword.dart';
import 'package:first_project/view/screen/forgetpassword/verifycode.dart';
import 'package:first_project/view/screen/homepage.dart';
import 'package:first_project/view/screen/homescreen.dart';
// import 'package:first_project/view/screen/homescreen.dart';
import 'package:first_project/view/screen/items.dart';
// import 'package:first_project/view/screen/language.dart';
import 'package:first_project/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: "/", page: () => const HomeScreen(),
    // middlewares: [MyMiddleWare()]
  ),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  GetPage(name: AppRoute.forgetpassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.onboarding, page: () => const Onboarding()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.verifycode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.homepage, page: () => const HomePage()),
  GetPage(name: AppRoute.resetpassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successignup, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.succesresetpassword,
      page: () => const SuccessResetPaswword()),
  GetPage(
      name: AppRoute.verifycodesignup, page: () => const VerifyCodeSignUp()),
];
