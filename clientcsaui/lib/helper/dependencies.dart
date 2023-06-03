import 'package:clientcsaui/screens/oboarding/onboarding_controller/onboarding_controller.dart';
import 'package:clientcsaui/screens/signup_screens/controller/signup_controller.dart';
import 'package:clientcsaui/screens/signup_screens/forgot_password/controller/resetpassword_controller.dart';
import 'package:get/get.dart';

Future<void> initDependencies() async{
  //Get.lazyPut(() => SignupController());
  //Get.lazyPut(() => OnBoardingControllerOne());
  //Get.lazyPut(() => ResetPasswordController());

  Get.put(SignupController());
  Get.put(OnBoardingControllerOne());
  Get.put(ResetPasswordController());
  //Get.lazyPut(() => ResetPasswordController(), );
}