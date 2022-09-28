// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/const/app_colors.dart';
import 'package:music_app/const/app_string.dart';
import 'package:music_app/ui/styles/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppString.profile,
          style: AppStyles.BlackTextStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.h, left: 25.w, right: 25.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 180.h,
                  width: 100.w,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/alamgir_1.jpg",
                    ),
                  ),
                ),
                Text(
                  AppString.sky,
                  style: TextStyle(fontSize: 50.sp),
                )
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 50.h,
                width: 160.w,
                decoration: BoxDecoration(
                  color: AppColors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
                child: Center(
                  child: Text(
                    AppString.editProfile,
                    style: AppStyles.myTextStyle,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
