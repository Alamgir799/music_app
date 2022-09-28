// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/const/app_string.dart';
import 'package:music_app/ui/styles/styles.dart';
import 'package:music_app/ui/widget/music_auth_button.dart';
import 'package:music_app/ui/widget/text_field_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top:30.h,right:20.w,left: 20.w),
          child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(Icons.arrow_back_ios_new_outlined,size:25.w,)),
                SizedBox(height:30.h,),
                Image.asset("assets/images/alamgir_1.jpg"),
                SizedBox(height:20.h,),
                Align(
                  alignment: Alignment.center,
                    child: Text(AppString.forgotPassword,style: AppStyles.BlackTextStyle,)),
                SizedBox(height:40.h,),
                Text(AppString.enterEmail,style: AppStyles.mySmallTextStyle),
                SizedBox(height:10.h,),
                FromField(_emailController,TextInputType.emailAddress,AppString.emailAddress),
                SizedBox(height:50.h,),
                MusicAuthButton(AppString.submit,(){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
