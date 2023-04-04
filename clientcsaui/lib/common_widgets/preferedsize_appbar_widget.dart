import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:clientcsaui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreferedSizeAppBar extends StatelessWidget {
  final String headingText;
  final String subHeadingText;
  final Widget widget;
  const PreferedSizeAppBar({Key? key, required this.headingText, required this.subHeadingText, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 38.h, left: 16.w, right: 16.w),
      //color: Colors.blue,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(child: Image.asset(backArrow, height: 24.h,)),
              SizedBox(height: 3.h,),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(headingText, style: TextStyle(
                fontSize: 22.sp,
                fontFamily: medium,

              ),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 38.w),
                child: Text(subHeadingText, textAlign: TextAlign.center,style: TextStyle(
                  fontFamily: medium,
                  fontSize: 14.sp,
                  letterSpacing: 0.25.w
                ),),
              ),
            ],
          ),
          widget,
        ],
      ),
    );
  }
}
