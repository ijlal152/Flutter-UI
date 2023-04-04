import 'package:clientcsaui/common_widgets/customTextFields.dart';
import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/screens/signup_screens/forgot_password/controller/resetpassword_controller.dart';
import 'package:clientcsaui/screens/signup_screens/forgot_password/widgets/resetpassword_screen2.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetPasswordScreenOne extends StatelessWidget {
  ResetPasswordScreenOne({Key? key}) : super(key: key);

  //final controller = Get.find<ResetPasswordController>();
  final controller = Get.put(ResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 56.h,),
            customTextFormField(
                hintText: 'ijlalhussain152@gmail.com',
                label: email,
                warningErrorA: '',
                controller: 'controller'
            ),
            SizedBox(height: 16.h,),
            customeColoredButton(
                text: sendCode, color: primaryColor,
                outlineColor: primaryColor, textColor: whiteColor,
                onTap: (){
                  controller.pageController.animateToPage(
                    1,
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                }
            ),

            SizedBox(height: 165.h,),

            Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text: 'Reset password with ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      letterSpacing: 0.25.w,
                      fontFamily: medium,
                      height: 1.42.h
                    ),
                    children: const [
                      TextSpan(
                          text: 'phone number',
                          style: TextStyle(
                            color: primaryColor
                          )
                      ),
                      TextSpan(text: ' instead')
                ]
              )
            ),
            SizedBox(height: 57.h,),
          ],
        ),
      ),
    );
  }
}
