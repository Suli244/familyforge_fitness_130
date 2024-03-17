import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodDetailItemWidget extends StatelessWidget {
  const FoodDetailItemWidget({
    super.key,
    required this.time,
    required this.min,
  });
  final String time;
  final String min;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        Text(
          time,
          style: TextStyle(
            fontSize: 14.h,
            fontWeight: FontWeight.w600,
            color: FFColors.redE80000,
            height: 1.1,
          ),
        ),
        SizedBox(height: 3.h),
        Text(
          min,
          style: TextStyle(
            fontSize: 17.h,
            fontWeight: FontWeight.w500,
            color: FFColors.whate,
            height: 1.1,
          ),
        ),
      ],
    );
  }
}
