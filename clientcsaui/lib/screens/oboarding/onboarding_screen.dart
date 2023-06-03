import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/screens/oboarding/onboarding_controller/onboarding_controller.dart';
import 'package:clientcsaui/screens/onboarding_agreement/onboarding_agreement.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //int pageIndex = 0;

  final controller = Get.put(OnBoardingControllerOne());
  //final controller = Get.find<OnBoardingControllerOne>();

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              child: PageView(
                children: controller.demo,
                onPageChanged: (index){
                  controller.index.value = index;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(controller.upperText[controller.index.value],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    letterSpacing: 0.15.w
                ),),
                    SizedBox(height: 8.h,),
                            Text(controller.lowerText[controller.index.value],textAlign: TextAlign.center, style: TextStyle(
                                fontFamily: medium,
                                fontSize: 14.sp,
                                letterSpacing: 0.25.w,
                            ),),
                            SizedBox(height: 8.h,),
                    CarouselIndicator(
                      count: controller.demo.length,
                      index: controller.index.value,
                      color: sliderColor,
                      activeColor: primaryColor,
                      width: 40.w,
                    ),
                    SizedBox(height: 24.h,),

                    Column(
                      children: [
                        customeColoredButton(text: signup, color: primaryColor, outlineColor: primaryColor, textColor: whiteColor, onTap: (){
                          Get.to(() => OnBoardingAgreement());
                        }),
                        SizedBox(height: 8.h,),
                        customeColoredButton(text: login, color: whiteColor, outlineColor: primaryColor, textColor: primaryColor, onTap: (){}),
                        SizedBox(height: 32.h,),

                      ],
                    )
                  ],
                ),

            ),

          ],
        ),

      ),
    );
  }
}
