import 'dart:ui';

import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientWidget extends StatelessWidget {
  const IngredientWidget({
    super.key,
    required this.textIngr,
  });
  final String textIngr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '•',
            style: TextStyle(
              fontSize: 18.h,
              fontWeight: FontWeight.w600,
              color: FFColors.grey999999,
              height: 1.1,
            ),
          ),
          SizedBox(width: 5.w),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textIngr,
                style: TextStyle(
                  fontSize: 14.h,
                  fontWeight: FontWeight.w500,
                  color: FFColors.grey999999,
                  height: 1.1,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class StepWidgwt extends StatelessWidget {
  const StepWidgwt({
    super.key,
    required this.step,
    required this.des,
    this.imag,
  });
  final String step;
  final String des;
  final String? imag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: FFColors.black222222,
          height: 2.h,
          thickness: 1.5,
        ),
        SizedBox(height: 15.h),
        Text(
          step,
          style: TextStyle(
            fontSize: 18.h,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            height: 1.1,
          ),
        ),
        SizedBox(height: 7.h),
        Text(
          des,
          style: TextStyle(
            fontSize: 14.h,
            fontWeight: FontWeight.w500,
            color: FFColors.grey555555,
            height: 1.1,
          ),
        ),
        SizedBox(height: 16.h),
        imag == null
            ? const SizedBox()
            : Image.asset(
                imag!,
                width: MediaQuery.of(context).size.width,
                height: 250.h,
              ),
        imag == null ? const SizedBox() : SizedBox(height: 10.h),
      ],
    );
  }
}
