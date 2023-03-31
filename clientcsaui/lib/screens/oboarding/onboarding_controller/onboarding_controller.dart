import 'package:clientcsaui/screens/oboarding/widgets/carousel_widget_one.dart';
import 'package:clientcsaui/screens/oboarding/widgets/carousel_widget_three.dart';
import 'package:clientcsaui/screens/oboarding/widgets/carousel_widget_two.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingControllerOne extends GetxController{
  var index = 0.obs;
  final List<Widget> demo = [
    FadeImageWithTextOne(),
    FadeImageWithTextTwo(),
    FadeImageWithTextThree(),
  ].obs ;

  var upperText = [
    nowaitingtext, backandforthtext, seeprogresstext
  ].obs;
  var lowerText = [
    youcanreport, youcancommunicate, gettoknowText
  ].obs;
}