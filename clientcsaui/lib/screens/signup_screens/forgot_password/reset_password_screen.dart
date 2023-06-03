import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:clientcsaui/screens/login_screens/login_screen.dart';
import 'package:clientcsaui/screens/signup_screens/forgot_password/controller/resetpassword_controller.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetPasswordMainScreen extends StatefulWidget {
  ResetPasswordMainScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordMainScreen> createState() => _ResetPasswordMainScreenState();
}

class _ResetPasswordMainScreenState extends State<ResetPasswordMainScreen> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   if(Get.isRegistered<ResetPasswordController>()){
  //     Get.find<ResetPasswordController>();
  //   }else{
  //     Get.put(ResetPasswordController());
  //   }
  //   super.initState();
  // }
  //
  // var controller;

  final controller = Get.put(ResetPasswordController());

  //final controller = Get.find<ResetPasswordController>();
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
                Get.off(() => LoginScreen());
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
          ),
          body: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(controller.upperText[controller.index.value], style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: medium,
                      ),),
                      SizedBox(height: 4.h,),
                      Text(controller.lowerText[controller.index.value],
                        textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: medium,
                            fontSize: 15.75.sp,
                            letterSpacing: 0.28.w,
                            color: lowerheadingColor
                        ),),
                      //SizedBox(height: 8.h,),
                      CarouselIndicator(
                        count: controller.demo.length,
                        index: controller.index.value,
                        color: sliderColor,
                        activeColor: primaryColor,
                        width: 69.w,
                        height: 5.32.h,
                        space: 4.w,
                        cornerRadius: 7.1.r,
                        animationDuration: 1,
                      ),
                      // CarouselIndicator(
                      //   count: signupController.demo.length,
                      //   index: signupController.index.value,
                      //   color: sliderColor,
                      //   activeColor: primaryColor,
                      //   width: 69.w,
                      // ),
                    ],
                  ),
                  SizedBox(height: 36.h,),
                  Expanded(
                    //height: 300.h,
                    child: PageView(
                      controller: controller.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: controller.demo,
                      onPageChanged: (index){
                        controller.index.value = index;
                        debugPrint(controller.index.value.toString());
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
