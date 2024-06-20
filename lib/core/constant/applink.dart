class AppLink {
  static const String server = "http://192.168.1.107/ecommerce";
  static const String test = "$server/test.php";
  static const String signup = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  static const String view = "$server/categories/view.php";
  static const String homepage = "$server/home.php";
  static const String items = "$server/items/items.php";

//=============================images=================
  static const String images = "http://192.168.1.107/ecommerce/upload";
  static const String imagescategories = "$images/categories";
  static const String imagesprodacts = "$images/prodacts";

//====================================================

  static const String verifycodesignup = "$server/veerifycode.php";
}
