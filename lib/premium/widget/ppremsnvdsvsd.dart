import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PremiumItemWidget extends StatelessWidget {
  const PremiumItemWidget({
    super.key,
    required this.imagSvg,
    required this.text,
  });
  final String text;
  final String imagSvg;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FFColors.black1,
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(
          width: 2,
          color: FFColors.black202020,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 16.w,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              imagSvg,
              width: 26.w,
              color: FFColors.grey555555,
            ),
            SizedBox(width: 7.w),
            Text(
              text,
              style: TextStyle(
                color: FFColors.grey555555,
                fontSize: 16.h,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
