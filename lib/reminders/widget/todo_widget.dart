import 'package:familyforge_fitness_130/core/FF_motin.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/reminders/add_edit.dart';
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
      child: FFMotion(
        onPressed: () async {
          await showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return AddEdit(
                model: widget.model,
              );
            },
          );
          context.read<GetTodoCubit>().getTodo();
        },
        child: Container(
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            color: FFColors.black222222,
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
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: FFColors.redE80000),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    visualDensity: VisualDensity.compact,
                  );
                },
              ),
              SizedBox(width: 7.w),
              isChecked == false
                  ? Text(
                      widget.model.name,
                      style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w600,
                        color: FFColors.whate,
                      ),
                    )
                  : Text(
                      widget.model.name,
                      style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w600,
                        color: FFColors.redE80000,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: FFColors.redE80000,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
