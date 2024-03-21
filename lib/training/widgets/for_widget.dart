import 'dart:ui';

import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/premium/preminvdsvd.dart';
import 'package:familyforge_fitness_130/training/training_rasp.dart';
import 'package:familyforge_fitness_130/training/vid_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForWidget extends StatelessWidget {
  const ForWidget({
    super.key,
    required this.model,
    required this.chekPtem,
  });
  final ForVideo model;
  final bool chekPtem;
  @override
  Widget build(BuildContext context) {
    return chekPtem == true
        ? InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PremiumScreen(
                    isClose: true,
                  ),
                ),
              );
            },
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.2,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      padding: EdgeInsets.all(9.r),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF202020)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 180.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(model.image),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            model.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.h,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              Text(
                                'Watch exercise',
                                style: TextStyle(
                                  color: const Color(0xffE80000),
                                  fontSize: 14.h,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Color(0xffE80000),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/premium_icon.svg',
                      width: 50.w,
                      color: FFColors.whate,
                    ),
                  ),
                )
              ],
            ),
          )
        : InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VidPage(
                    url: model.ytbUrl,
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(9.r),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF202020)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(model.image), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    model.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Text(
                        'Watch exercise',
                        style: TextStyle(
                          color: const Color(0xffE80000),
                          fontSize: 14.h,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        color: Color(0xffE80000),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
