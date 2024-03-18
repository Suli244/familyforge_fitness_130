import 'package:cached_network_image/cached_network_image.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/training/training_rasp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class TrainDetaile extends StatelessWidget {
  const TrainDetaile({super.key, required this.model, required this.index});
  final Rasp model;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: const BackButton(color: FFColors.grey555555),
        title: Text(
          'Exercise $index',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.h,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            ClipRRect(
              child: CachedNetworkImage(
                imageUrl: model.image,
                width: MediaQuery.of(context).size.width,
                height: 220.h,
                fit: BoxFit.cover,
                placeholder: (context, url) => ClipRRect(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 220.h,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade200,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.backExercises,
                    style: TextStyle(
                      color: const Color(0xffE80000),
                      fontSize: 13.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    model.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'BODY PART:',
                    style: TextStyle(
                      color: const Color(0xffE80000),
                      fontSize: 13.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    model.bodyPart,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'EQUIPMENT:',
                    style: TextStyle(
                      color: const Color(0xffE80000),
                      fontSize: 13.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    model.equipment,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'DIFFICULTY:',
                    style: TextStyle(
                      color: const Color(0xffE80000),
                      fontSize: 13.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    model.difficulty,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Divider(
                    height: 32,
                    color: Color(0xff222222),
                  ),
                  Text(
                    'Step 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    model.step1,
                    style: TextStyle(
                      color: FFColors.grey555555,
                      fontSize: 14.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Divider(
                    height: 32,
                    color: Color(0xff222222),
                  ),
                  Text(
                    'Step 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    model.step2,
                    style: TextStyle(
                      color: FFColors.grey555555,
                      fontSize: 14.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Divider(
                    height: 32,
                    color: Color(0xff222222),
                  ),
                  Text(
                    'Step 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    model.step3,
                    style: TextStyle(
                      color: FFColors.grey555555,
                      fontSize: 14.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 35.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
