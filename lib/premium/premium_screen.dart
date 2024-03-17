import 'package:familyforge_fitness_130/core/con_bar.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/core/ff_motin.dart';
import 'package:familyforge_fitness_130/premium/widget/premium_item_widget.dart';
import 'package:familyforge_fitness_130/premium/widget/restore_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key, this.isClose = false});
  final bool isClose;
  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FFColors.black2,
      body: Stack(
        children: [
          Positioned(
            top: 64.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (widget.isClose) {
                        Navigator.pop(context);
                      } else {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FFBottomBar(
                              indexScr: 0,
                            ),
                          ),
                          (protected) => false,
                        );
                      }
                    },
                    child: Image.asset('assets/images/close.png', width: 24.w),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Restore purchases',
                      style: TextStyle(
                        fontSize: 14.h,
                        height: 0,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Image.asset(
                'assets/images/premium.png',
                width: MediaQuery.of(context).size.width,
                height: 292.h,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 435.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: FFColors.black1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 30.h, left: 16.w, right: 16.w),
                child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        'Get Premium',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.h,
                          height: 0,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    const PremiumItemWidget(
                      imagSvg: 'assets/icons/training_icon.svg',
                      text: 'Unlock all the exercises',
                    ),
                    SizedBox(height: 10.h),
                    const PremiumItemWidget(
                      imagSvg: 'assets/icons/food_icon.svg',
                      text: 'Unlock all the recipes',
                    ),
                    SizedBox(height: 10.h),
                    const PremiumItemWidget(
                      imagSvg: 'assets/icons/prem_icon.svg',
                      text: 'No ADs',
                    ),
                    SizedBox(height: 30.h),
                    FFMotion(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FFBottomBar(
                              indexScr: 0,
                            ),
                          ),
                          (protected) => false,
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: FFColors.black1,
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            width: 2,
                            color: FFColors.black202020,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20.h,
                            horizontal: 33.w,
                          ),
                          child: Text(
                            'Buy Premium \$0.99',
                            style: TextStyle(
                              color: FFColors.redE80000,
                              fontSize: 16.h,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    RestoreButtons(
                      onPressTermOfUse: () {},
                      onPressPrivacyPolicy: () {},
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
