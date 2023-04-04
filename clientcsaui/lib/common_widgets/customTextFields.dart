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
          fontSize: 12.sp,
          fontFamily: medium,
          letterSpacing: 0.5.w,
          height: 1.33.h,
          color: labelColor
        ),),
        SizedBox(height: 5.h,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            border: Border.all(color: sliderColor)
          ),
          child: TextFormField(
            //controller: controller,
            style: TextStyle(
              fontFamily: medium,
              fontSize: 14.sp,
              letterSpacing: 0.25.w,
              fontWeight: FontWeight.normal,
              color: lowerheadingColor,
              height: 1.42.h
            ),
            decoration: InputDecoration(
                hintText: hintText,
                //focusColor: Colors.transparent,
                filled: true,
                fillColor: filledColor,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: const BorderSide(color: sliderColor, style: BorderStyle.none)
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.r),
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
            fontSize: 12.sp
          ),),
        ) ,
      ],
    )
  );
}