// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/const/app_string.dart';
import 'package:music_app/ui/route/route.dart';
import 'package:music_app/ui/styles/styles.dart';
import 'package:music_app/ui/widget/music_auth_button.dart';
import 'package:music_app/ui/widget/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top:50.h,left: 35.w,right: 35.w),
          child: SingleChildScrollView(
            scrollDirection:Axis.vertical ,
            child: Column(
              children: [
                Image.asset("assets/images/alamgir_1.jpg"),
                SizedBox(height:50.h,),
                FromField(_nameController,TextInputType.name,AppString.userName),
                SizedBox(height:25.h,),
                FromField(_passwordController,TextInputType.text,AppString.password),
                SizedBox(height:15.h,),
                InkWell(
                  onTap:()=>Get.toNamed(forgetPassword),
                  child: Text(
                    AppString.forgetPassword,
                    style: AppStyles.mySmallTextStyle,
                  ),
                ),
                SizedBox(height:60.h,),
                MusicAuthButton(AppString.login,(){}),
                SizedBox(height:15.h,),
                RichText(
                    text: TextSpan(
                        text: AppString.doNotAccount,
                        style:AppStyles.mySmallTextStyle,
                        children: [
                          TextSpan(
                            text: AppString.signUp,
                            style: AppStyles.BlackTextStyle,
                            recognizer: TapGestureRecognizer()..onTap =()=>Get.toNamed(signUp),
                          ),
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
