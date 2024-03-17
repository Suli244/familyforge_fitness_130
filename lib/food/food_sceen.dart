import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/food/dishes/dishes.dart';
import 'package:familyforge_fitness_130/food/table/tablee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodSceen extends StatelessWidget {
  const FoodSceen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: Text(
            'Food',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.h,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Container(
                height: 37.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: FFColors.grey28282b,
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: FFColors.black1,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(
                    fontSize: 12.h,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: Colors.white,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 12.h,
                    fontWeight: FontWeight.w600,
                  ),
                  indicator: BoxDecoration(
                    color: FFColors.grey636366,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: FFColors.grey28282b,
                      width: 3,
                    ),
                  ),
                  tabs: const [
                    Tab(
                      text: 'Table',
                    ),
                    Tab(
                      text: 'Dishes',
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Tablee(),
                    Dishes(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
