// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/const/app_colors.dart';
import 'package:music_app/const/app_string.dart';
import 'package:music_app/ui/route/route.dart';
import 'package:music_app/ui/styles/styles.dart';
import 'package:music_app/ui/widget/albums.dart';
import 'package:music_app/ui/widget/artist.dart';
import 'package:music_app/ui/widget/drawer_item.dart';

class HomeFilledScreen extends StatelessWidget {
  const HomeFilledScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          title: Text(
            AppString.welcomeSky,
            style: AppStyles.BlackTextStyle,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.recentlyPlayed,
                  style: AppStyles.mySmallTextStyle,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 160.h,
                      width: 130.w,
                      child: Image.asset(
                        "assets/images/alamgir_1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 160.h,
                      width: 130.w,
                      child: Image.asset(
                        "assets/images/alamgir_1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString.collection,
                      style: AppStyles.mySmallTextStyle,
                    ),
                    Text(AppString.seeAll, style: AppStyles.smallTextStyle),
                  ],
                ),
                Container(
                  height: 200.h,
                  width: 260.w,
                  child: Image.asset(
                    "assets/images/alamgir_1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString.newAlbums,
                      style: AppStyles.mySmallTextStyle,
                    ),
                    Text(AppString.seeAll, style: AppStyles.smallTextStyle),
                  ],
                ),
                Albums(""),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppString.popularArtist,
                        style: AppStyles.mySmallTextStyle),
                    Text(AppString.seeAll, style: AppStyles.smallTextStyle),
                  ],
                ),
                Artist()
              ],
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: AppColors.blueAccent,
          child: Padding(
            padding: EdgeInsets.only(
                top: 100.h, left: 30.w, right: 30.w, bottom: 100.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap:()=>Get.toNamed(playlist),
                      child: Text(
                        AppString.playlist,
                        style: AppStyles.myTextStyle,
                      ),
                    ),
                    InkWell(
                      onTap: ()=>Get.toNamed(album),
                      child: Text(
                        AppString.album,
                        style: AppStyles.myTextStyle,
                      ),
                    ),
                    InkWell(
                      onTap:()=>Get.toNamed(artist),
                      child: Text(
                        AppString.artist,
                        style: AppStyles.myTextStyle,
                      ),
                    ),
                    Text(
                      AppString.download,
                      style: AppStyles.myTextStyle,
                    ),
                  ],
                )),
                Expanded(child: Container()),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      drawerItem(Icons.person, AppString.profile,(){}),
                      drawerItem(Icons.settings, AppString.setting,()=>Get.toNamed(setting)),
                      drawerItem(Icons.logout_outlined, AppString.logout,(){}),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
