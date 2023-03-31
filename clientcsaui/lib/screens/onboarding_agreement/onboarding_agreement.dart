import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/screens/signup_screens/signup_main_screen.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingAgreement extends StatelessWidget {
  const OnBoardingAgreement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(agreementBackground), fit: BoxFit.cover)),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                  text: 'By continuing to use the app you agree to ',
                  style: TextStyle(
                      fontFamily: medium,
                      color: whiteColor,
                      fontSize: 16.sp,
                      letterSpacing: 0.25.w),
                  children: const [
                    TextSpan(
                        text: 'Privacy Policy,',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        )),
                    TextSpan(text: ' '),
                    TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(decoration: TextDecoration.underline)),
                    TextSpan(
                        text: ' and our use of first-party and third'
                            '-party to personalize content, analyze performance,'
                            'improve security and described in our Privacy Policy')
                  ])),
              SizedBox(
                height: 25.h,
              ),
              customeColoredButton(
                  text: cont,
                  color: whiteColor,
                  outlineColor: whiteColor,
                  textColor: primaryColor,
                  onTap: () {
                    Get.to(() => SignupMainScreen());
                  }
              ),
              SizedBox(
                height: 32.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
