import 'dart:developer';

import 'package:familyforge_fitness_130/core/concbasasas.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/core/ff_motin.dart';
import 'package:familyforge_fitness_130/core/urlssyl.dart';
import 'package:familyforge_fitness_130/core/wevmkvnsb.dart';
import 'package:familyforge_fitness_130/premium/widget/ppremsnvdsvsd.dart';
import 'package:familyforge_fitness_130/premium/widget/restoreewisv.dart';
import 'package:familyforge_fitness_130/settings/familyforge_fitness_adadpad.dart';
import 'package:familyforge_fitness_130/settings/familyforge_fitness_prenv.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key, this.isClose = false});
  final bool isClose;
  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  Future<void> familyforgeFitnessPurchase() async {
    final familyforgeFitnessPaywall = await FamilyforgeFitnessAdapty()
        .familyforgeFitnessGetPaywall(DocFF.sndsdsdwq);
    if (familyforgeFitnessPaywall == null) return;
    final familyforgeFitnessProducts = await FamilyforgeFitnessAdapty()
        .familyforgeFitnessGetPaywallProducts(familyforgeFitnessPaywall);
    if (familyforgeFitnessProducts == null) return;
    if (kDebugMode) log('FamilyforgeFitness');

    await FamilyforgeFitnessAdapty()
        .familyforgeFitnessMakePurchase(familyforgeFitnessProducts.first);
  }

  bool trbbbdb = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FFColors.black2,
      body: Stack(
        children: [
          Positioned(
            top: 64.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (widget.isClose) {
                        Navigator.pop(context);
                      } else {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FFBottomBar(
                              indexScr: 0,
                            ),
                          ),
                          (protected) => false,
                        );
                      }
                    },
                    child: Image.asset('assets/images/close.png', width: 24.w),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      restoreFamilyforgeFitnessPknqwvm(context);
                    },
                    child: Text(
                      'Restore purchases',
                      style: TextStyle(
                        fontSize: 14.h,
                        height: 0,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Image.asset(
                'assets/images/premium.png',
                width: MediaQuery.of(context).size.width,
                height: 292.h,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 435.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: FFColors.black1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 30.h, left: 16.w, right: 16.w),
                child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        'Get Premium',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.h,
                          height: 0,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    const PremiumItemWidget(
                      imagSvg: 'assets/icons/training_icon.svg',
                      text: 'Unlock all the exercises',
                    ),
                    SizedBox(height: 10.h),
                    const PremiumItemWidget(
                      imagSvg: 'assets/icons/food_icon.svg',
                      text: 'Unlock all the recipes',
                    ),
                    SizedBox(height: 10.h),
                    const PremiumItemWidget(
                      imagSvg: 'assets/icons/prem_icon.svg',
                      text: 'No ADs',
                    ),
                    SizedBox(height: 30.h),
                    FFMotion(
                      onPressed: () async {
                        setState(() => trbbbdb = true);
                        await familyforgeFitnessPurchase();
                        final hasPremiumStatusSmartTrader =
                            await FamilyforgeFitnessAdapty()
                                .familyforgeFitnessHasPremiumStatus();
                        if (hasPremiumStatusSmartTrader) {
                          await setFamilyforgeFitnessPknqwvm();
                          // ignore: use_build_context_synchronously
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const FFBottomBar(),
                            ),
                            (route) => false,
                          );
                        }
                        setState(() => trbbbdb = false);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: FFColors.black1,
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            width: 2,
                            color: FFColors.black202020,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20.h,
                            horizontal: 33.w,
                          ),
                          child: trbbbdb
                              ? const CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(FFColors.redE80000),
                                )
                              : Text(
                                  'Buy Premium \$0.99',
                                  style: TextStyle(
                                    color: FFColors.redE80000,
                                    fontSize: 16.h,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    RestoreButtons(
                      onPressTermOfUse: () {
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
                      onPressPrivacyPolicy: () {
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
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
