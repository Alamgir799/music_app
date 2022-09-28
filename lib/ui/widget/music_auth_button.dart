
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:music_app/const/app_colors.dart';

class MusicAuthButton extends StatelessWidget {
  String title;


  final Function onAction;
  RxBool _value = false.obs;
  MusicAuthButton(this.title,this.onAction);
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap:(){
          _value.value = true;
          onAction();
        },
        child: Container(
          height: 60.h,
          decoration: BoxDecoration(
            color: AppColors.blueAccent,
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
  }
}
