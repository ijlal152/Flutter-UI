import 'package:clientcsaui/common_widgets/customTextFields.dart';
import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/screens/signup_screens/forgot_password/reset_password_screen.dart';
import 'package:clientcsaui/screens/signup_screens/signup_main_screen.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leadingWidth: 100.w,
        leading: InkWell(
          onTap: (){
            Get.off(() => SignupMainScreen());
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
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(login, style: TextStyle(
                  fontFamily: medium,
                  fontSize: 22.sp,
                  color: labelColor
                ),),
                SizedBox(height: 4.h,),
                Text(welcomeback, style: TextStyle(
                  fontFamily: medium,
                  fontSize: 14.sp,
                  letterSpacing: 0.25.w,
                  color: lowerheadingColor
                ),),

                SizedBox(height: 16.h,),

                customTextFormField(hintText: 'ijlal152@gmail.com', label: email, warningErrorA: '', controller: 'controller'),
                SizedBox(height: 16.h,),
                customTextFormField(hintText: '********', label: password, warningErrorA: '', controller: 'controller'),
                //SizedBox(height: 8.h,),
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: (){
                          Get.to(() => ResetPasswordMainScreen());
                        },
                        child: Text(
                          forgetpassword,
                          style: TextStyle(
                  fontFamily: medium,
                  fontSize: 12.sp,
                  letterSpacing: 0.4.w,
                            height: 1.33.h
                ),
                        )
                    )
                ),
                SizedBox(height: 16.h,),
                customeColoredButton(text: login, color: primaryColor, outlineColor: primaryColor, textColor: whiteColor, onTap: (){}),
                SizedBox(height: 16.h,),
                const Divider(
                  color: sliderColor,
                ),
                SizedBox(height: 16.h,),
                buttonWithIcon(context: context, text: loginwithgoogle, icon: googleLogo, buttonColor: whiteColor, outlineColor: Colors.black),
                SizedBox(height: 8.h,),
                buttonWithIcon(context: context, text: loginwithapple, icon: applelogo, buttonColor: whiteColor, outlineColor: Colors.black),
                SizedBox(height: 32.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(alreadyhaveanaccount, textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: medium,
                          letterSpacing: 0.25.w,
                          fontSize: 14.sp,
                          color: lowerheadingColor
                      ),),
                    InkWell(
                      onTap: (){
                        Get.to(() => SignupMainScreen());
                      },
                      child: Text(signup,style: TextStyle(
                          fontFamily: medium,
                          letterSpacing: 0.25.w,
                          fontSize: 14.sp,
                          color: primaryColor
                      ),),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
