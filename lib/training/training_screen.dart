import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/settings/familyforge_fitness_prenv.dart';
import 'package:familyforge_fitness_130/training/training_rasp.dart';
import 'package:familyforge_fitness_130/training/widgets/for_widget.dart';
import 'package:familyforge_fitness_130/training/widgets/trn_wdgt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainingScreenqfsvsd extends StatefulWidget {
  const TrainingScreenqfsvsd({super.key});

  @override
  State<TrainingScreenqfsvsd> createState() => _TrainingScreenqfsvsdState();
}

class _TrainingScreenqfsvsdState extends State<TrainingScreenqfsvsd> {
  String page = 'For Parents';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Training',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.h,
            fontWeight: FontWeight.w700,
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
                height: 32.h,
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
                      text: 'For Parents',
                    ),
                    Tab(
                      text: 'For Kids',
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                  future: getFamilyforgeFitnessPknqwvm(),
                  builder: (context, snapshot) {
                    bool chek = snapshot.data ?? false;
                    return Expanded(
                      child: TabBarView(
                        children: [
                          ListView.separated(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            shrinkWrap: true,
                            itemCount: listTraining.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 12),
                            itemBuilder: (context, index) => TrnWdgt(
                              model: listTraining[index],
                              index: index + 1,
                              chekPtem: index > 3 && !chek,
                            ),
                          ),
                          ListView.separated(
                            padding: EdgeInsets.symmetric(vertical: 10.r),
                            shrinkWrap: true,
                            itemCount: listVideo.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 12),
                            itemBuilder: (context, index) => ForWidget(
                              model: listVideo[index],
                              chekPtem: index > 3 && !chek,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
      //  Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 20.r),
      //   child: Column(
      //     children: [
      //       Container(
      //         padding: const EdgeInsets.all(2),
      //         width: MediaQuery.of(context).size.width,
      //         decoration: BoxDecoration(
      //           color: const Color(0xff767680).withOpacity(0.24),
      //           borderRadius: BorderRadius.circular(8),
      //         ),
      //         child: Row(
      //           children: [
      //             Expanded(
      //               child: FFMotion(
      //                 onPressed: () {
      //                   setState(() {
      //                     page = 'For Parents';
      //                   });
      //                 },
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width,
      //                   height: 28.h,
      //                   decoration: BoxDecoration(
      //                     color: page == 'For Parents'
      //                         ? const Color(0xff636366)
      //                         : null,
      //                     borderRadius: BorderRadius.circular(8),
      //                   ),
      //                   child: Center(
      //                     child: Text(
      //                       'For Parents',
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 12.h,
      //                         fontWeight: FontWeight.w600,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             Expanded(
      //               child: FFMotion(
      //                 onPressed: () {
      //                   setState(() {
      //                     page = 'For Kids';
      //                   });
      //                 },
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width,
      //                   height: 28.h,
      //                   decoration: BoxDecoration(
      //                     color: page == 'For Kids'
      //                         ? const Color(0xff636366)
      //                         : null,
      //                     borderRadius: BorderRadius.circular(8),
      //                   ),
      //                   child: Center(
      //                     child: Text(
      //                       'For Kids',
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 12.h,
      //                         fontWeight: FontWeight.w600,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 6.h),
      //       page == 'For Parents'
      //           ? Expanded(
      //               child: ListView.separated(
      //                 padding: EdgeInsets.symmetric(vertical: 10.r),
      //                 shrinkWrap: true,
      //                 itemCount: listTraining.length,
      //                 separatorBuilder: (context, index) =>
      //                     const SizedBox(height: 12),
      //                 itemBuilder: (context, index) => TrainWidget(
      //                   model: listTraining[index],
      //                   index: index + 1,
      //                 ),
      //               ),
      //             )
      //           : Expanded(
      //               child: ListView.separated(
      //                 padding: EdgeInsets.symmetric(vertical: 10.r),
      //                 shrinkWrap: true,
      //                 itemCount: listVideo.length,
      //                 separatorBuilder: (context, index) =>
      //                     const SizedBox(height: 12),
      //                 itemBuilder: (context, index) => ForWidget(
      //                   model: listVideo[index],
      //                 ),
      //               ),
      //             ),
      //     ],
      //   ),
      // ),
    );
  }
}
