// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/const/app_string.dart';
import 'package:music_app/ui/styles/styles.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Text(
          AppString.setting,
          style: AppStyles.BlackTextStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h, left: 25.w, right: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.username,
              style: AppStyles.BlackTextStyle,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.gmail,
                  style: AppStyles.BlackTextStyle,
                ),
                Text(
                  AppString.edit,
                  style: AppStyles.smallTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.star,
                  style: AppStyles.BlackTextStyle,
                ),
                Text(
                  AppString.edit,
                  style: AppStyles.smallTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.background,
                    style: AppStyles.BlackTextStyle,
                  ),
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: Colors.black,
                    child: Text(
                      AppString.black,
                      style: TextStyle(fontSize: 10.sp, color: Colors.white),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: Colors.black12,
                    child: Text(
                      AppString.white,
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
