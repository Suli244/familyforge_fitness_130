import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/todo_get_cubit/todo_get_cubit.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/update_todo/update_todo_cubit.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/todo_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/todo_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoWidget extends StatefulWidget {
  const TodoWidget({
    super.key,
    required this.model,
  });

  final TodoHiveModel model;
  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  late bool isChecked = widget.model.isActive;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateTodoCubit(TodoRepoImpl()),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.r),
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: FFColors.whate,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            BlocConsumer<UpdateTodoCubit, UpdateTodoState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: () {
                    context.read<GetTodoCubit>().getTodo();
                  },
                );
              },
              builder: (context, state) {
                return Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                    context
                        .read<UpdateTodoCubit>()
                        .updateTodoExerciseStatus(widget.model.id, isChecked);
                  },
                  activeColor: FFColors.redE80000,
                  checkColor: FFColors.whate,
                  shape: const CircleBorder(),
                  visualDensity: VisualDensity.compact,
                );
              },
            ),
            SizedBox(width: 8.w),
            isChecked == false
                ? Text(
                    widget.model.name,
                    style: TextStyle(
                      fontSize: 16.h,
                      fontWeight: FontWeight.w500,
                      color: FFColors.black,
                    ),
                  )
                : Text(
                    widget.model.name,
                    style: TextStyle(
                      fontSize: 16.h,
                      fontWeight: FontWeight.w500,
                      color: FFColors.redE80000,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: FFColors.redE80000,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
