import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customeColoredButton({
  required text, required color,
  required outlineColor, required textColor,
  required VoidCallback onTap
}){
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 36.h,
      //padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: primaryColor,
        )
      ),
      child: Center(
        child: Text(text, textAlign: TextAlign.center ,style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 12.sp,
          letterSpacing: 0.5,
        ),),
      ),
    ),
  );
}

Widget groupedButton({context, required title1, required title2, required icon1, required icon2, required color, required borderColor}){
  return Padding(
    padding: EdgeInsets.only(top: 8.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          width: 136.w,
          height: 36.h,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(
                color: borderColor,
                width: 1.w
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Container(),
              Flexible(child: Image.asset(googleLogo, height: 18.h,)),
              SizedBox(width: 10.w,),
              Text(google, style: TextStyle(
                fontSize: 13.5.sp,
                letterSpacing: 0.56.w,
                fontWeight: FontWeight.w500,
                color: lowerheadingColor
              ),),
              //Container()
              //Flexible(child: Text('hi ijlal how are u'))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          width: 136.w,
          height: 36.h,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(
                color: borderColor,
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: Image.asset(applelogo, height: 18.h,)),
              SizedBox(width: 10.w,),
              Text(apple, style: TextStyle(
                  fontSize: 13.5.sp,
                  letterSpacing: 0.56.w,
                  color: lowerheadingColor,
                  fontWeight: FontWeight.w500
              ),)
            ],
          ),
        ),

      ],
    ),
  );
}

Widget buttonWithIcon({required context, required text, required icon, required buttonColor, required outlineColor}){
  return Container(
    //padding: const EdgeInsets.all(10),
    height: 36.h,
    decoration: BoxDecoration(
      color: buttonColor,
      borderRadius: BorderRadius.circular(14.r),
      border: Border.all(
        color: outlineColor,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(icon, height: 24.h,),
        SizedBox(width: 9.w,),
        Text(text, style: TextStyle(
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5.w,
          fontSize: 12.sp,
        ),),
      ],
    ),
  );
}
