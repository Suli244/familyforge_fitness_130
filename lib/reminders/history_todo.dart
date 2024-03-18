import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/todo_get_cubit/todo_get_cubit.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/todo_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/widget/todo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryTodo extends StatefulWidget {
  const HistoryTodo({super.key});

  @override
  State<HistoryTodo> createState() => _HistoryTodoState();
}

class _HistoryTodoState extends State<HistoryTodo> {
  List<TodoHiveModel> modelNow = [];
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light().copyWith(
              primary: Colors.red,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      context.read<GetTodoCubit>().getTodo();
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<GetTodoCubit>().getTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: FFColors.grey555555),
        title: Text(
          'Notes History',
          style: TextStyle(
            fontSize: 24.h,
            fontWeight: FontWeight.w700,
            color: FFColors.whate,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.r),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                BlocBuilder<GetTodoCubit, GetTodoState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Center(child: CircularProgressIndicator()),
                      success: (model) {
                        modelNow = model.where((e) => e.isActive == true).toList();
            
                        return modelNow.isNotEmpty
                            ? ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return TodoWidget(
                                    model: modelNow[index],
                                  );
                                },
                                separatorBuilder: (_, i) => SizedBox(height: 7.r),
                                itemCount: modelNow.length,
                              )
                            : Padding(
                                padding: EdgeInsets.only(top: 150.r),
                                child: Center(
                                  child: Text(
                                    'Empty',
                                    style: TextStyle(
                                      fontSize: 20.h,
                                      fontWeight: FontWeight.w400,
                                      color: FFColors.whate.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
