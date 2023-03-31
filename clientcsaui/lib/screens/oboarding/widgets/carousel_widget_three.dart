import 'package:clientcsaui/screens/oboarding/onboarding_controller/onboarding_controller.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FadeImageWithTextThree extends StatefulWidget {
  const FadeImageWithTextThree({Key? key}) : super(key: key);

  @override
  State<FadeImageWithTextThree> createState() => _FadeImageWithTextThreeState();
}

class _FadeImageWithTextThreeState extends State<FadeImageWithTextThree> {
  final controller = Get.find<OnBoardingControllerOne>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(bg3),
              fit: BoxFit.cover
          )
      ),

    );
  }
}
