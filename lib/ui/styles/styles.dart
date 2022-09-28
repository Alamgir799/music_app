import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/const/app_colors.dart';

class AppStyles {
  static InputDecoration textFieldDecoration(String hint) => InputDecoration(
    fillColor: Colors.pink,
    border: OutlineInputBorder(
      borderRadius:BorderRadius.circular(10.r),
    ),
    hintText: hint,
  );

  static TextStyle mySmallTextStyle = TextStyle(
      fontSize: 15.sp, fontWeight: FontWeight.w300, color:Colors.black);

  static TextStyle myTextStyle = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w200, color:AppColors.whiteColor);

  static TextStyle BlackTextStyle = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w300, color:Colors.black);

  static TextStyle smallTextStyle = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w300,
      color: Colors.black);

}