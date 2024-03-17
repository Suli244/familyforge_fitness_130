import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodItemWidget extends StatelessWidget {
  const FoodItemWidget({
    super.key,
    required this.imag,
    required this.recipe,
    required this.title,
    required this.description,
    required this.onTap,
  });
  final String imag;
  final String recipe;
  final String title;
  final String description;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            width: 1.2,
            color: FFColors.black202020,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(13).r,
                    child: Image.asset(
                      imag,
                      width: MediaQuery.of(context).size.width,
                      height: 200.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 5.w,
                    top: 5.h,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13).r,
                        color: FFColors.redE80000,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        child: Text(
                          recipe,
                          style: TextStyle(
                            fontSize: 14.h,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            height: 1.1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.h),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),
              SizedBox(height: 9.h),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14.h,
                  fontWeight: FontWeight.w500,
                  color: FFColors.grey555555,
                  height: 1.1,
                ),
              ),
              SizedBox(height: 6.h),
              Row(
                children: [
                  Text(
                    'View recipe',
                    style: TextStyle(
                      fontSize: 14.h,
                      fontWeight: FontWeight.w600,
                      color: FFColors.redE80000,
                      height: 1.1,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: FFColors.redE80000,
                    size: 25.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
