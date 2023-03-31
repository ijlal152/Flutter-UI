import 'package:clientcsaui/common_widgets/customTextFields.dart';
import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/screens/signup_screens/controller/signup_controller.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
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
                hintText: '',
                label: surname,
                warningErrorA: '',
                controller: 'controller'
            ),
            SizedBox(height: 18.h,),
            customTextFormField(hintText: '', label: otherNames, warningErrorA: '' ,controller: 'controller'),
            SizedBox(height: 18.h,),
            customTextFormField(hintText: '', label: phoneNumber, warningErrorA: '' ,controller: 'controller'),
            SizedBox(height: 18.h,),
            customTextFormField(hintText: 'Select Location', label: selectLocation, warningErrorA: '' ,controller: 'controller'),
            SizedBox(height: 27.h,),
            customeColoredButton(
                text: next, color: primaryColor,
                outlineColor: primaryColor,
                textColor: whiteColor,
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
