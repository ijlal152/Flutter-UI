import 'package:clientcsaui/common_widgets/customTextFields.dart';
import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/screens/signup_screens/controller/signup_controller.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MeterInfoScreen extends StatefulWidget {
  const MeterInfoScreen({Key? key}) : super(key: key);

  @override
  State<MeterInfoScreen> createState() => _MeterInfoScreenState();
}

class _MeterInfoScreenState extends State<MeterInfoScreen> {
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
                label: accountName,
                warningErrorA: '',
                controller: 'controller'
            ),
            SizedBox(height: 18.h,),
            customTextFormField(hintText: '', label: accountNumber, warningErrorA: '' ,controller: 'controller'),
            SizedBox(height: 18.h,),
            customTextFormField(hintText: '', label: electricityMeterNumber, warningErrorA: '' ,controller: 'controller'),
            SizedBox(height: 18.h,),
            customTextFormField(hintText: 'Select Location', label: waterMeterNumber, warningErrorA: '' ,controller: 'controller'),
            SizedBox(height: 35.h,),
            customeColoredButton(
                text: next, color: primaryColor,
                outlineColor: primaryColor,
                textColor: whiteColor,
                onTap: (){
                  controller.pageController.animateToPage(
                    3,
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
