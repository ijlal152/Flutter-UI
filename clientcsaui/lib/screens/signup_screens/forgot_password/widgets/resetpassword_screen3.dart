import 'package:clientcsaui/common_widgets/customTextFields.dart';
import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/screens/signup_screens/forgot_password/controller/resetpassword_controller.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetPasswordScreenThree extends StatefulWidget {
  ResetPasswordScreenThree({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreenThree> createState() => _ResetPasswordScreenThreeState();
}

class _ResetPasswordScreenThreeState extends State<ResetPasswordScreenThree> {
  final controller = Get.put(ResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32.h,),
            customTextFormField(
                hintText: '********',
                label: newPassword,
                warningErrorA: passwordwarningerror,
                controller: 'controller',
            ),
            SizedBox(height: 16.h,),
            customTextFormField(
              hintText: '********',
              label: newPassword,
              warningErrorA: bothpasswordmustmatch,
              controller: 'controller',
            ),
            SizedBox(height: 16.h,),
            customeColoredButton(
                text: setNewPassword, color: primaryColor,
                outlineColor: primaryColor, textColor: whiteColor,
                onTap: (){
                  controller.pageController.animateToPage(
                    2,
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
