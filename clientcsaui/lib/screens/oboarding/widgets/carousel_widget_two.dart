import 'package:clientcsaui/screens/oboarding/onboarding_controller/onboarding_controller.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FadeImageWithTextTwo extends StatefulWidget {
  const FadeImageWithTextTwo({Key? key}) : super(key: key);

  @override
  State<FadeImageWithTextTwo> createState() => _FadeImageWithTextTwoState();
}

class _FadeImageWithTextTwoState extends State<FadeImageWithTextTwo> {
  final controller = Get.find<OnBoardingControllerOne>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(bg2),
              fit: BoxFit.cover
          )
      ),

    );
  }
}
