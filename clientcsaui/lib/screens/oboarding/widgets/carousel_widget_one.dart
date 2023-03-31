import 'package:clientcsaui/screens/oboarding/onboarding_controller/onboarding_controller.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FadeImageWithTextOne extends StatefulWidget {
  const FadeImageWithTextOne({Key? key}) : super(key: key);

  @override
  State<FadeImageWithTextOne> createState() => _FadeImageWithTextOneState();
}

class _FadeImageWithTextOneState extends State<FadeImageWithTextOne> {
  final controller = Get.find<OnBoardingControllerOne>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(bg1),
              fit: BoxFit.cover
          )
      ),
      child: Stack(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Positioned(
          //   //top: 445.h,
          //   left: 0,
          //   right: 0,
          //   bottom: MediaQuery.of(context).size.height * 0.25.h,
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text(nowaitingtext, textAlign: TextAlign.center ,style: TextStyle(
          //             fontWeight: FontWeight.w500,
          //             fontSize: 16.sp,
          //             letterSpacing: 0.15.w
          //         ),),
          //         SizedBox(height: 4.h,),
          //
          //         Text(youcanreport, style: TextStyle(
          //             fontFamily: medium,
          //             fontSize: 14.sp,
          //             letterSpacing: 0.25.w,
          //         ),),
          //         SizedBox(height: 8.h,),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
