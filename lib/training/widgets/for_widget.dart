import 'package:familyforge_fitness_130/training/training_rasp.dart';
import 'package:familyforge_fitness_130/training/vid_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForWidget extends StatelessWidget {
  const ForWidget({
    super.key,
    required this.model,
  });
  final ForVideo model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VidPage(
              url: model.ytbUrl,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(9.r),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF202020)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(model.image), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              model.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.h,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                Text(
                  'Watch exercise',
                  style: TextStyle(
                    color: const Color(0xffE80000),
                    fontSize: 14.h,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xffE80000),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
