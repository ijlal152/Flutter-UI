import 'package:clientcsaui/common_widgets/customTextFields.dart';
import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/screens/login_screens/login_screen.dart';
import 'package:clientcsaui/screens/signup_screens/controller/signup_controller.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupInformationScreen extends StatefulWidget {
  const SignupInformationScreen({Key? key}) : super(key: key);

  @override
  State<SignupInformationScreen> createState() => _SignupInformationScreenState();
}

class _SignupInformationScreenState extends State<SignupInformationScreen> {

  final controller = Get.find<SignupController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            customTextFormField(
                hintText: 'ijlalhussain152@gmail.com',
                label: email,
                warningErrorA: '',
                controller: 'controller'
            ),
            SizedBox(height: 16.h,),
            customTextFormField(hintText: '********', label: password, warningErrorA: passwordwarningerror ,controller: 'controller'),
            SizedBox(height: 16.h,),
            customTextFormField(hintText: '********', label: confirmPassword, warningErrorA: bothpasswordmustmatch ,controller: 'controller'),
            SizedBox(height: 24.h,),
            customeColoredButton(
                text: signup, color: primaryColor,
                outlineColor: primaryColor,
                textColor: whiteColor,
                onTap: (){
                  controller.pageController.animateToPage(
                      1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.ease,
                  );
                }
            ),
            //SizedBox(height: 50.h,),
            groupedButton(context: context, title1: google, title2: apple, icon1: googleLogo, icon2: applelogo, color: whiteColor, borderColor: labelColor),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(alreadyhaveanaccount, textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: medium,
                  letterSpacing: 0.25.w,
                  fontSize: 14.sp,
                  height: 1.42.h,
                  color: lowerheadingColor
                ),),
                InkWell(
                  onTap: (){
                    Get.to(() => LoginScreen());
                  },
                  child: Text(login,style: TextStyle(
                      fontFamily: medium,
                      letterSpacing: 0.25.w,
                      fontSize: 14.sp,
                      height: 1.42.h,
                      color: primaryColor
                  ),),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
