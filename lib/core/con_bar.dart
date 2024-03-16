import 'package:familyforge_fitness_130/core/FF_motin.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/food/food_sceen.dart';
import 'package:familyforge_fitness_130/reminders/reminders_screen.dart';
import 'package:familyforge_fitness_130/settings/settings_screen.dart';
import 'package:familyforge_fitness_130/training/training_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FFBottomBarState extends State<FFBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: isActive,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          top: 18.r,
          bottom: 35.r,
        ),
        decoration: const BoxDecoration(
          color: FFColors.blackBt,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FFMotion(
              onPressed: () => setState(() => isActive = 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/training_icon.svg',
                    color: isActive == 0 ? null : FFColors.grey555555,
                    width: 26.88.w,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    'Training',
                    style: TextStyle(
                      color: isActive == 0
                          ? FFColors.redE80000
                          : FFColors.grey555555,
                      fontSize: 14.h,
                      height: 0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            FFMotion(
              onPressed: () => setState(() => isActive = 1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/food_icon.svg',
                    color: isActive == 1 ? null : FFColors.grey555555,
                    width: 26.88.w,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    'Food',
                    style: TextStyle(
                      color: isActive == 1
                          ? FFColors.redE80000
                          : FFColors.grey555555,
                      fontSize: 14.h,
                      height: 0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            FFMotion(
              onPressed: () => setState(() => isActive = 2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/reminders_icon.svg',
                    color: isActive == 2 ? null : FFColors.grey555555,
                    width: 26.88.w,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    'Reminders',
                    style: TextStyle(
                      color: isActive == 2
                          ? FFColors.redE80000
                          : FFColors.grey555555,
                      fontSize: 14.h,
                      height: 0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            FFMotion(
              onPressed: () => setState(() => isActive = 3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/settings_icon.svg',
                    color: isActive == 3 ? null : FFColors.grey555555,
                    width: 26.88.w,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: isActive == 3
                          ? FFColors.redE80000
                          : FFColors.grey555555,
                      fontSize: 14.h,
                      height: 0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  late int isActive = widget.indexScr;
  final _pages = <Widget>[
    const TrainingScreen(),
    const FoodSceen(),
    const RemindersScreen(),
    const SettingsScreen(),
  ];
}

class FFBottomBar extends StatefulWidget {
  const FFBottomBar({super.key, this.indexScr = 0});
  final int indexScr;

  @override
  State<FFBottomBar> createState() => FFBottomBarState();
}
