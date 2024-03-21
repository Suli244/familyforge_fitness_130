import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestoreButtons extends StatelessWidget {
  const RestoreButtons({
    super.key,
    required this.onPressTermOfUse,
    required this.onPressPrivacyPolicy,
  });

  final Function() onPressTermOfUse;
  final Function() onPressPrivacyPolicy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 24.w),
        InkWell(
          onTap: onPressPrivacyPolicy,
          child: Text(
            'Privacy Policy',
            style: TextStyle(
              fontSize: 13.h,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ),
        InkWell(
          onTap: onPressTermOfUse,
          child: Text(
            'Terms of Use',
            style: TextStyle(
              fontSize: 13.h,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ),
        SizedBox(width: 24.w),
      ],
    );
  }
}
