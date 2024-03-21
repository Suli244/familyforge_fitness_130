import 'package:familyforge_fitness_130/core/urls.dart';
import 'package:familyforge_fitness_130/core/wevmkvnsb.dart';
import 'package:familyforge_fitness_130/premium/preminvdsvd.dart';
import 'package:familyforge_fitness_130/settings/familyforge_fitness_prenv.dart';
import 'package:familyforge_fitness_130/settings/widget/estsevmsvsvs.dart';
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
            FutureBuilder(
              future: getFamilyforgeFitnessPknqwvm(),
              builder: (context, snapshot) {
                if (snapshot.hasData && !snapshot.data!) {
                  return Column(
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
                    ],
                  );
                }
                return const SizedBox();
              },
            ),
            SettingsItemWidget(
              imagSvg: 'assets/icons/lock_icon.svg',
              text: 'Privacy Policy',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebFF(
                      title: 'Privacy Policy',
                      url: DocFF.pP,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10.h),
            SettingsItemWidget(
              imagSvg: 'assets/icons/list_icon.svg',
              text: 'Terms of Use',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebFF(
                      title: 'Terms of Use',
                      url: DocFF.tUse,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10.h),
            SettingsItemWidget(
              imagSvg: 'assets/icons/navu_icon.svg',
              text: 'Support',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebFF(
                      title: 'Support',
                      url: DocFF.s,
                    ),
                  ),
                );
              },
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
