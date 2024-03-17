import 'package:familyforge_fitness_130/premium/premium_screen.dart';
import 'package:familyforge_fitness_130/settings/widget/settings_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.h,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            SettingsItemWidget(
              imagSvg: 'assets/icons/premium_icon.svg',
              text: 'Get Premium',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PremiumScreen(
                      isClose: true,
                    ),
                  ),
                );
              },
              isIcon: false,
            ),
            SizedBox(height: 10.h),
            SettingsItemWidget(
              imagSvg: 'assets/icons/lock_icon.svg',
              text: 'Privacy Policy',
              onPressed: () {},
            ),
            SizedBox(height: 10.h),
            SettingsItemWidget(
              imagSvg: 'assets/icons/list_icon.svg',
              text: 'Terms of Use',
              onPressed: () {},
            ),
            SizedBox(height: 10.h),
            SettingsItemWidget(
              imagSvg: 'assets/icons/navu_icon.svg',
              text: 'Support',
              onPressed: () {},
            ),
            SizedBox(height: 10.h),
            SettingsItemWidget(
              imagSvg: 'assets/icons/shap_icon.svg',
              text: 'Share App',
              onPressed: () {
                Share.share('Hello');
              },
            ),
          ],
        ),
      ),
    );
  }
}
