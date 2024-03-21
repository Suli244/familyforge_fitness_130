import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.imag,
    this.isPadding = false,
  });
  final String imag;
  final bool isPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isPadding ? 20.w : 0),
      child: Image.asset(
        imag,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
