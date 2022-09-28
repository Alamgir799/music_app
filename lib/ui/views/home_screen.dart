// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/const/app_colors.dart';
import 'package:music_app/ui/views/bottom_nav_controller/favourite.dart';
import 'package:music_app/ui/views/bottom_nav_controller/home_filled.dart';
import 'package:music_app/ui/views/bottom_nav_controller/profile.dart';
import 'package:music_app/ui/views/bottom_nav_controller/speaker.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _pages = [
    HomeFilledScreen(),
    FavouriteScreen(),
    SpeakerScreen(),
    ProfileScreen()
  ];
  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:AppColors.blueAccent,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: AppColors.blueAccent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,color:Colors.black,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,color:Colors.black), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.speaker_group_outlined,color:Colors.black), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person,color:Colors.black), label: ""),
        ],
        currentIndex: _currentIndex.toInt(),
        onTap: (Index) {
          _currentIndex.value = Index;
        },
      ),
      body: Obx(() => _pages[_currentIndex.toInt()]),
    );
  }
}
