import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:clientcsaui/screens/onboarding_agreement/onboarding_agreement.dart';
import 'package:clientcsaui/screens/signup_screens/controller/signup_controller.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupMainScreen extends StatefulWidget {
  const SignupMainScreen({Key? key}) : super(key: key);

  @override
  State<SignupMainScreen> createState() => _SignupMainScreenState();
}

class _SignupMainScreenState extends State<SignupMainScreen> {

  final signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0,
          leadingWidth: 100.w,
          leading: InkWell(
            onTap: (){
              if(signupController.index.value == 0){
                Get.off(OnBoardingAgreement());
              }else if(signupController.index.value == 1){
                signupController.pageController.animateToPage(
                  0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                );
              }else if(signupController.index.value == 2){
                signupController.pageController.animateToPage(
                  1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                );
              }else if(signupController.index.value == 3){
                signupController.pageController.animateToPage(
                  2,
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                );
              }

            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(child: Image.asset(backArrow, height: 24.h,)),
                  Expanded(
                    child: Text(back, style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      letterSpacing: 0.5.w,
                    ),),
                  ),
                  //Container()
                ],
              ),
            ),
          ),
          actions: [
            signupController.index == 2 ? TextButton(onPressed: (){
              signupController.pageController.animateToPage(
              3,
              duration: const Duration(seconds: 1),
              curve: Curves.ease,
              );
            }, child: Text(skip)) : Container(),
            signupController.index == 3 ? TextButton(onPressed: (){

            }, child: Text(skip)) : Container()
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(signupController.upperText[signupController.index.value], style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: medium,
                    ),),
                    SizedBox(height: 4.h,),
                    Text(signupController.lowerText[signupController.index.value],
                      textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: medium,
                          fontSize: 15.75.sp,
                          letterSpacing: 0.28.w,
                          color: lowerheadingColor
                      ),),
                    //SizedBox(height: 8.h,),
                    CarouselIndicator(
                      count: signupController.demo.length,
                      index: signupController.index.value,
                      color: sliderColor,
                      activeColor: primaryColor,
                      width: 77.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1.h,
                ),
                Expanded(
                  //height: 300.h,
                  child: PageView(
                    controller: signupController.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: signupController.demo,
                    onPageChanged: (index){
                      signupController.index.value = index;
                      debugPrint(signupController.index.value.toString());
                    },
                  ),
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
