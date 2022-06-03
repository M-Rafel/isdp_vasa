part of isdp_vasa;

class LoginController extends GetxController {
  final emailFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  logIn() {
    var emailValid = emailFormKey.currentState?.validate() ?? false;
    var passValid = passwordFormKey.currentState?.validate() ?? false;
    if(emailValid && passValid) {
      HomeController homeController = Get.find();
      homeController.userName = "Haymanot";
      homeController.isUserLoggedIn = true;
      homeController.update();

      Get.back();
    }


  }

}