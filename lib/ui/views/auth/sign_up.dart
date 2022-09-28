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

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20.w,
                  )),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppString.newAccount,
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                AppString.enterEmail,
                style: AppStyles.mySmallTextStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              FromField(_emailController, TextInputType.emailAddress,
                  AppString.emailAddress),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppString.enterUserName,
                style: AppStyles.mySmallTextStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              FromField(_emailController, TextInputType.emailAddress,
                  AppString.userName),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppString.enterYourPassword,
                style: AppStyles.mySmallTextStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              FromField(_emailController, TextInputType.emailAddress,
                  AppString.password),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppString.confirmPassword,
                style: AppStyles.mySmallTextStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              FromField(_emailController, TextInputType.emailAddress,
                  AppString.confirmPasswordText),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppString.mobileNumber,
                style: AppStyles.mySmallTextStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              FromField(_emailController, TextInputType.emailAddress,
                  AppString.mobileNumberText),
              SizedBox(height:40.h,),
              MusicAuthButton(AppString.signUp,()=>Get.toNamed(home)),
              SizedBox(height:15.h,),
              Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: AppString.doNotAccount,
                        style:AppStyles.mySmallTextStyle,
                        children: [
                          TextSpan(
                            text: AppString.signIn,
                            style: AppStyles.BlackTextStyle,
                            recognizer: TapGestureRecognizer()..onTap =()=>Get.toNamed(login),
                          ),
                        ])),
              ),
              SizedBox(height:15.h,),
            ],
          ),
        ),
      ),
    ));
  }
}
