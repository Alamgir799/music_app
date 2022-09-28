// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/const/app_colors.dart';
import 'package:music_app/const/app_string.dart';
import 'package:music_app/ui/styles/styles.dart';
import 'package:music_app/ui/widget/tracklist.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          automaticallyImplyLeading: true,
          elevation: 0,
          title: Text(
            AppString.favourite,
            style: AppStyles.BlackTextStyle,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20.h,left: 25.w,right: 25.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment:Alignment.center,
                    child: Image.asset("assets/images/alamgir_1.jpg",height: 200.h,)),
                SizedBox(height:30.h,),
                Text(AppString.tracklist,style:AppStyles.BlackTextStyle,),
                TrackList(AppString.bornToDie,AppString.N330),
                TrackList(AppString.love,AppString.N414),
                TrackList(AppString.cherry,AppString.N348),
                TrackList(AppString.summerTime,AppString.N342),
                TrackList(AppString.young,AppString.N425),
                TrackList(AppString.bel,AppString.N406),
                TrackList(AppString.beaches,AppString.N358),
                TrackList(AppString.bornToDie,AppString.N330),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
