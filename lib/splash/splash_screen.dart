import 'package:familyforge_fitness_130/core/con_bar.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/onbording/onbording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    firstOpen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FFColors.black1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 247.w,
              height: 256.h,
            ),
          ),
        ],
      ),
    );
  }

  firstOpen() async {
    await Future.delayed(const Duration(milliseconds: 1450));

    SharedPreferences.getInstance().then(
      (prefs) async {
        if (!prefs.containsKey('sdkfjnvjdskj')) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Onbording(),
            ),
          );
          prefs.setDouble('sdkfjnvjdskj', 83471658);
          await Future.delayed(const Duration(seconds: 4));
          try {
            final InAppReview inAppReview = InAppReview.instance;

            if (await inAppReview.isAvailable()) {
              inAppReview.requestReview();
            }
          } catch (e) {
            throw Exception(e);
          }
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const FFBottomBar(
                indexScr: 0,
              ),
            ),
          );
        }
      },
    );
  }
}
