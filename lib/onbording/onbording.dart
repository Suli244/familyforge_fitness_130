import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/core/ff_motin.dart';
import 'package:familyforge_fitness_130/onbording/widget/onboaraacawiwdd.dart';
import 'package:familyforge_fitness_130/premium/preminvdsvd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  final PageController controller = PageController();
  int currantPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            bottom: 100,
            child: SafeArea(
              child: PageView(
                physics: const ClampingScrollPhysics(),
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currantPage = value;
                  });
                },
                children: const [
                  OnBoardingItem(
                    imag: 'assets/images/onboarding_one.png',
                  ),
                  OnBoardingItem(
                    imag: 'assets/images/onboarding_two.png',
                    isPadding: true,
                  ),
                  OnBoardingItem(
                    imag: 'assets/images/onboarding_three.png',
                    isPadding: true,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 246.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: FFColors.black2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                    ),
                    border: const Border(
                      top: BorderSide(
                        color: Color.fromARGB(255, 51, 49, 49),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
                    child: Column(
                      children: [
                        FittedBox(
                          child: Text(
                            currantPage == 0
                                ? 'Online trainings for parents \nand children'
                                : currantPage == 1
                                    ? 'Recipes for dishes for every\ntaste with cooking instructions'
                                    : currantPage == 2
                                        ? 'Keep notes and\ntraining calendar'
                                        : '',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.h,
                              height: 1.1,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(),
                        FFMotion(
                          onPressed: () {
                            if (currantPage == 2) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PremiumScreen(),
                                ),
                                (protected) => false,
                              );
                            } else {
                              controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: FFColors.black2,
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(
                                width: 2,
                                color: FFColors.black202020,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20.h, horizontal: 33.w),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Continue',
                                    style: TextStyle(
                                      color: FFColors.redE80000,
                                      fontSize: 16.h,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: FFColors.redE80000,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 55.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
