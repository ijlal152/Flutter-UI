import 'package:clientcsaui/screens/signup_screens/forgot_password/widgets/resetpassword_screen1.dart';
import 'package:clientcsaui/screens/signup_screens/forgot_password/widgets/resetpassword_screen2.dart';
import 'package:clientcsaui/screens/signup_screens/forgot_password/widgets/resetpassword_screen3.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController{
  var index = 0.obs;
  List <Widget>demo = [
    ResetPasswordScreenOne(),
    ResetPasswordScreenTwo(),
    ResetPasswordScreenThree(),
  ].obs;

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   demo = [
  //     ResetPasswordScreenOne(),
  //     ResetPasswordScreenTwo(),
  //     ResetPasswordScreenThree(),
  //   ];
  // }

  final pageController = PageController(initialPage: 0);
  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  var upperText = [
    passwordReset, enterCode, enterNewPassword
  ].obs;
  var lowerText = [
    pleaseEnter, wesendacodeto, pleaseenteranewpassword
  ].obs;
}