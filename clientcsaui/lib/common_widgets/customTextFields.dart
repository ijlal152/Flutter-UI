import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTextFormField({required hintText, required label, required warningErrorA ,required controller}){
  return Container(
    color: Colors.white,

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(
          fontSize: 13.sp,
          fontFamily: medium,
          letterSpacing: 0.56.w,
          color: labelColor
        ),),
        SizedBox(height: 5.h,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: sliderColor)
          ),
          child: TextFormField(
            //controller: controller,
            style: TextStyle(
              fontFamily: medium,
              fontSize: 15.75.sp,
              letterSpacing: 0.28.w,
              color: lowerheadingColor
            ),
            decoration: InputDecoration(
                hintText: hintText,
                //focusColor: Colors.transparent,
                filled: true,
                fillColor: filledColor,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: const BorderSide(color: sliderColor, style: BorderStyle.none)
                ),
                contentPadding: const EdgeInsets.all(15),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide.none
                  // borderSide: BorderSide(
                  //     color: sliderColor,
                  //     style: BorderStyle.none,
                  // ),
              ),
            ),
          ),
        ),
        warningErrorA == '' ? Container() : Padding(
          padding: EdgeInsets.only(left: 10.w, top: 2.h),
          child: Text(warningErrorA,
          style: TextStyle(
            color: labelColor,
            letterSpacing: 0.45.w,
            fontSize: 13.5.sp
          ),),
        ) ,
      ],
    )
  );
}