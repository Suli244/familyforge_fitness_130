import 'package:familyforge_fitness_130/core/FF_motin.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/update_reminders_cubit/update_remalknva.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/remindsvmskvsdvds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditReminders extends StatefulWidget {
  const EditReminders({super.key, required this.model});
  // final ValueChanged model;
  final RemindersHiveModel model;
  @override
  State<EditReminders> createState() => _EditRemindersState();
}

class _EditRemindersState extends State<EditReminders> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.model.name);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 1.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
          color: FFColors.black222222,
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: FFColors.grey555555,
                  ),
                ),
                SizedBox(height: 20.h),
                TextField(
                  controller: _controller,
                  style: TextStyle(
                    color: FFColors.whate,
                    fontSize: 28.h,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Training Name',
                    hintStyle: TextStyle(
                      color: FFColors.grey555555,
                      fontSize: 28.h,
                      fontWeight: FontWeight.w700,
                    ),
                    contentPadding: EdgeInsets.zero,
                    isDense: true,
                    focusColor: FFColors.redE80000,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFMotion(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(20.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: FFColors.grey555555,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 19.r,
                          color: FFColors.redE80000,
                        ),
                      ),
                    ),
                    const Spacer(),
                    BlocProvider(
                      create: (context) => UpdateRemindersCubit(RepossImpl()),
                      child: BlocConsumer<UpdateRemindersCubit,
                          UpdateRemindersState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            success: () {
                              Navigator.pop(context);
                            },
                          );
                        },
                        builder: (context, state) {
                          return FFMotion(
                            onPressed: () {
                              if (_controller.text.isNotEmpty) {
                                context
                                    .read<UpdateRemindersCubit>()
                                    .updateRemindersAll(
                                        widget.model.id, _controller.text);
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(20.r),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                  color: FFColors.grey555555,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 19.r,
                                    color: FFColors.redE80000,
                                  ),
                                  SizedBox(width: 7.w),
                                  Text(
                                    'Add train',
                                    style: TextStyle(
                                      color: FFColors.redE80000,
                                      fontSize: 16.h,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
