import 'package:clientcsaui/screens/signup_screens/widgets/personal_info_widget.dart';
import 'package:clientcsaui/screens/signup_screens/widgets/meter_info_widget.dart';
import 'package:clientcsaui/screens/signup_screens/widgets/signup_info_widget.dart';
import 'package:clientcsaui/screens/signup_screens/widgets/your_photo_widget.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  var index = 0.obs;
  final List<Widget> demo = [
    SignupInformationScreen(),
    PersonalInfoScreen(),
    MeterInfoScreen(),
    YourPhotoScreen(),
  ].obs;


  final pageController = PageController(initialPage: 0);
  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  var upperText = [
    signup, personalInformation, meterInformation, yourPhoto
  ].obs;
  var lowerText = [
    instantaccess, letuslearn, skipif, uploadaphoto
  ].obs;
}