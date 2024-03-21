import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/premium/preminvdsvd.dart';
import 'package:familyforge_fitness_130/training/train_detaile.dart';
import 'package:familyforge_fitness_130/training/training_rasp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class TrnWdgt extends StatelessWidget {
  const TrnWdgt({
    super.key,
    required this.model,
    required this.index,
    required this.chekPtem,
  });
  final Rasp model;
  final int index;
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
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.r),
                                child: CachedNetworkImage(
                                  imageUrl: model.image,
                                  width: MediaQuery.of(context).size.width,
                                  height: 160.h,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 160.h,
                                      child: Shimmer.fromColors(
                                        baseColor: Colors.grey.shade500,
                                        highlightColor: Colors.grey.shade200,
                                        child: Container(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.r,
                                    vertical: 5.r,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffE80000),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    '$index exercise',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.h,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                          Text(
                            model.subTitle,
                            style: TextStyle(
                              color: FFColors.grey555555,
                              fontSize: 14.h,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              Text(
                                'View exercise',
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
                  builder: (context) =>
                      TrainDetaile(model: model, index: index),
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
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: CachedNetworkImage(
                          imageUrl: model.image,
                          width: MediaQuery.of(context).size.width,
                          height: 160.h,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 160.h,
                              child: Shimmer.fromColors(
                                baseColor: Colors.grey.shade500,
                                highlightColor: Colors.grey.shade200,
                                child: Container(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.r,
                            vertical: 5.r,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xffE80000),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '$index exercise',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.h,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
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
                  Text(
                    model.subTitle,
                    style: TextStyle(
                      color: FFColors.grey555555,
                      fontSize: 14.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Text(
                        'View exercise',
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
