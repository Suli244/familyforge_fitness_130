// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/core/ff_motin.dart';

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget({
    super.key,
    required this.text,
    required this.imagSvg,
    required this.onPressed,
    this.isIcon = true,
    this.isIco = true,
  });
  final String text;
  final String imagSvg;
  final Function()? onPressed;
  final bool isIcon;
  final bool isIco;

  @override
  Widget build(BuildContext context) {
    return FFMotion(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isIcon ? FFColors.black1 : FFColors.yellowFFF500,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            width: isIcon ? 1.2 : 0,
            color: isIcon ? FFColors.black202020 : FFColors.yellowFFF500,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 13.h,
            horizontal: 13.w,
          ),
          child: Row(
            children: [
              isIco
                  ? SvgPicture.asset(
                      imagSvg,
                      width: 23.w,
                      color: isIcon ? FFColors.redE80000 : FFColors.black202020,
                    )
                  : const SizedBox(),
              SizedBox(width: 8.w),
              Text(
                text,
                style: TextStyle(
                  color: isIcon ? FFColors.redE80000 : FFColors.black202020,
                  fontSize: 16.h,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: isIcon ? FFColors.redE80000 : Colors.black,
                size: 35.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
