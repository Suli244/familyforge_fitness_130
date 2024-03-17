import 'package:familyforge_fitness_130/food/table/detail_image/detail_image.dart';
import 'package:familyforge_fitness_130/settings/widget/settings_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tablee extends StatelessWidget {
  const Tablee({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 18.h),
          Container(
            height: 280,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16).r,
              image: const DecorationImage(
                image: AssetImage('assets/images/tablee_image.png'),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          SettingsItemWidget(
            imagSvg: '',
            text: 'View table detailed',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => const DetailImage(),
                ),
              );
            },
            isIco: false,
          ),
        ],
      ),
    );
  }
}
