import 'package:clientcsaui/common_widgets/customeButtons.dart';
import 'package:clientcsaui/utils/colors.dart';
import 'package:clientcsaui/utils/images_constants.dart';
import 'package:clientcsaui/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourPhotoScreen extends StatefulWidget {
  const YourPhotoScreen({Key? key}) : super(key: key);

  @override
  State<YourPhotoScreen> createState() => _YourPhotoScreenState();
}

class _YourPhotoScreenState extends State<YourPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          children: [
            SizedBox(height: 80.h,),
            Container(
              // height: 148.h,
              // width: 148.w,
              padding: EdgeInsets.symmetric(vertical: 38.h, horizontal: 35.w),
              decoration: BoxDecoration(
                color: filledColor,
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: outlineBorderColor
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                ///mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(cameraPng, height: 48.h,),
                  SizedBox(height: 8.h,),
                  Text(uploadPhoto, style: TextStyle(
                    fontSize: 12.sp,
                    letterSpacing: 0.5.w,
                    fontWeight: FontWeight.w500,
                    color: labelColor
                  ),),
                ],
              ),
            ),
            SizedBox(height: 121.h,),
            customeColoredButton(
                text: finistsigningup,
                color: filledColor,
                outlineColor: outlineBorderColor,
                textColor: labelColor,
                onTap: (){}
            ),
          ],
        ),
      ),
    );
  }
}
