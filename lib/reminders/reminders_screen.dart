import 'package:familyforge_fitness_130/core/FF_motin.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/reminders/add_note.dart';
import 'package:familyforge_fitness_130/reminders/add_reminders.dart';
import 'package:familyforge_fitness_130/reminders/edit_reminders.dart';
import 'package:familyforge_fitness_130/reminders/history_todo.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/delete_reminders_cubit/delete_reminders_cubit.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/get_reminders_cubit/get_reminders_cubit.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/todo_get_cubit/todo_get_cubit.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/reminders_repo.dart';
import 'package:familyforge_fitness_130/reminders/widget/todo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  late DateTime _selectedDate;
  DateTime now = DateTime.now();

  EventList<Event> _markedDateMap = EventList<Event>(events: {});

  @override
  void initState() {
    _selectedDate = DateTime(now.year, now.month, now.day, 0, 0, 0, 0);
     context.read<GetTodoCubit>().getTodo();
    super.initState();
  }

  final Map<int, Widget> myTabs = <int, Widget>{
    0: Text(
      "Schedule",
      style: TextStyle(
        color: FFColors.whate,
        fontSize: 12.7.h,
        fontWeight: FontWeight.w600,
      ),
    ),
    1: Text(
      "Notes",
      style: TextStyle(
        color: FFColors.whate,
        fontSize: 12.7.h,
        fontWeight: FontWeight.w600,
      ),
    )
  };

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Reminders',
          style: TextStyle(
            color: FFColors.whate,
            fontSize: 30.h,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
        actions: [
          _selectedIndex == 1
              ? Padding(
                  padding: EdgeInsets.only(right: 20.r),
                  child: FFMotion(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HistoryTodo(),
                          ),
                        );
                      },
                      child:
                          Image.asset('assets/images/hisss.png', width: 24.w)),
                )
              : const SizedBox()
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.h),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CupertinoSlidingSegmentedControl<int>(
                  thumbColor: FFColors.black767680,
                  backgroundColor: FFColors.black222222,
                  children: myTabs,
                  onValueChanged: (int? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _selectedIndex = newValue;
                      });
                    }
                  },
                  groupValue: _selectedIndex,
                ),
              ),
              SizedBox(height: 10.h),
              _selectedIndex == 0
                  ? BlocProvider(
                      create: (context) =>
                          GetRemindersCubit(RepossImpl())..getReminders(),
                      child: BlocBuilder<GetRemindersCubit, GetRemindersState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            error: (error) =>
                                const Center(child: Text('Error')),
                            success: (model) {
                              List<RemindersHiveModel> filteredModel =
                                  model.where((item) {
                                return item.dateTime.month ==
                                        _selectedDate.month &&
                                    item.dateTime.year == _selectedDate.year;
                              }).toList();

                              List<int> day = [];
                              for (var item in filteredModel) {
                                int dayOfMonth = item.dateTime.day;
                                if (!day.contains(dayOfMonth)) {
                                  day.add(dayOfMonth);
                                }
                              }

                              _markedDateMap.clear();

                              Map<DateTime, List<RemindersHiveModel>>
                                  groupedEvents = {};
                              for (var event in model) {
                                DateTime dateWithoutTime = DateTime(
                                    event.dateTime.year,
                                    event.dateTime.month,
                                    event.dateTime.day);
                                if (!groupedEvents
                                    .containsKey(dateWithoutTime)) {
                                  groupedEvents[dateWithoutTime] = [];
                                }
                                groupedEvents[dateWithoutTime]!.add(event);
                              }

                              for (var material in model) {
                                CustomEvent event = CustomEvent(
                                  date: material.dateTime,
                                  title: 'Event',
                                  color: Color(material.color),
                                );
                                _markedDateMap.add(material.dateTime, event);
                              }
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 400,
                                    decoration: BoxDecoration(
                                      color: FFColors.black1,
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: CalendarCarousel(
                                      iconColor: FFColors.whate,

                                      onLeftArrowPressed: () {
                                        setState(() {
                                          _selectedDate = DateTime(
                                            _selectedDate.month == 1
                                                ? _selectedDate.year - 1
                                                : _selectedDate.year,
                                            _selectedDate.month == 1
                                                ? 12
                                                : _selectedDate.month - 1,
                                          );

                                          filteredModel = model.where((item) {
                                            return item.dateTime.month ==
                                                    _selectedDate.month &&
                                                item.dateTime.year ==
                                                    _selectedDate.year;
                                          }).toList();
                                        });
                                      },

                                      onRightArrowPressed: () {
                                        setState(() {
                                          _selectedDate = DateTime(
                                            _selectedDate.month == 12
                                                ? _selectedDate.year + 1
                                                : _selectedDate.year,
                                            _selectedDate.month == 12
                                                ? 1
                                                : _selectedDate.month + 1,
                                          );

                                          filteredModel = model.where((item) {
                                            return item.dateTime.month ==
                                                    _selectedDate.month &&
                                                item.dateTime.year ==
                                                    _selectedDate.year;
                                          }).toList();
                                        });
                                      },

                                      headerTextStyle: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: FFColors.whate,
                                      ),
                                      nextDaysTextStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: FFColors.grey555555,
                                      ),
                                      prevDaysTextStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: FFColors.grey555555,
                                      ),
                                      weekdayTextStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: FFColors.grey555555,
                                      ),
                                      daysTextStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: FFColors.whate,
                                      ),
                                      weekendTextStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: FFColors.whate,
                                      ),
                                      onDayPressed: (DateTime date,
                                          List<Event> events) async {
                                        setState(() {
                                          _selectedDate = date;
                                        });
                                        await showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (BuildContext context) {
                                            return AddReminders(
                                              datee: _selectedDate,
                                            );
                                          },
                                        );
                                        context
                                            .read<GetRemindersCubit>()
                                            .getReminders();
                                      },

                                      markedDateIconBuilder: (event) {
                                        CustomEvent customEvent =
                                            event as CustomEvent;
                                        return Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: customEvent.color,
                                                borderRadius:
                                                    BorderRadius.circular(1.r)),
                                            width: 5.w,
                                            height: 5.5.h,
                                          ),
                                        );
                                      },

                                      thisMonthDayBorderColor:
                                          Colors.transparent,
                                      height: 420.0,
                                      selectedDateTime: _selectedDate,
                                      daysHaveCircularBorder: true,
                                      markedDatesMap: _markedDateMap,
                                      markedDateShowIcon: false,
                                      customGridViewPhysics:
                                          const NeverScrollableScrollPhysics(),
                                      // markedDateCustomShapeBorder:
                                      //     const CircleBorder(),
                                      todayTextStyle: const TextStyle(
                                          color: FFColors.whate),
                                      //----
                                      todayBorderColor: Colors.transparent,
                                      todayButtonColor: FFColors.redE80000,
                                      dayButtonColor: Colors.transparent,
                                      //----
                                      selectedDayTextStyle: const TextStyle(
                                          color: FFColors.whate),
                                      selectedDayButtonColor:
                                          FFColors.grey555555.withOpacity(0.2),
                                      selectedDayBorderColor: FFColors.whate,
                                      markedDateWidget: Padding(
                                        padding: EdgeInsets.only(right: 1.sp),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            //color: event.color,
                                          ),
                                          width: 4.w,
                                          height: 4.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  const Divider(
                                    height: 0,
                                    color: FFColors.black222222,
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    'number of trainings this month'
                                        .toUpperCase(),
                                    style: TextStyle(
                                      color: FFColors.redE80000,
                                      fontSize: 13.h,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    '${filteredModel.length}',
                                    style: TextStyle(
                                      color: FFColors.whate,
                                      fontSize: 18.h,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    'training days of this month'.toUpperCase(),
                                    style: TextStyle(
                                      color: FFColors.redE80000,
                                      fontSize: 13.h,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 3.h),
                                  day.isNotEmpty
                                      ? Row(
                                          children: List.generate(
                                            day.length,
                                            (index) => Padding(
                                              padding:
                                                  EdgeInsets.only(right: 3.r),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    '${day[index]}',
                                                    style: TextStyle(
                                                      color: FFColors.whate,
                                                      fontSize: 18.h,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Text(
                                                    index == day.length - 1
                                                        ? ''
                                                        : ';',
                                                    style: TextStyle(
                                                      color: FFColors.whate,
                                                      fontSize: 18.h,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : Text(
                                          '0',
                                          style: TextStyle(
                                            color: FFColors.whate,
                                            fontSize: 18.h,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                  SizedBox(height: 16.h),
                                  const Divider(
                                    height: 0,
                                    color: FFColors.black222222,
                                  ),
                                  SizedBox(height: 16.h),
                                  filteredModel.isNotEmpty
                                      ? ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              padding: EdgeInsets.all(16.r),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16.r),
                                                color: FFColors.black222222,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        filteredModel[index]
                                                            .name,
                                                        style: TextStyle(
                                                          color: FFColors.whate,
                                                          fontSize: 16.h,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      BlocProvider(
                                                        create: (context) =>
                                                            DeleteRemindersCubit(
                                                                RepossImpl()),
                                                        child: BlocConsumer<
                                                            DeleteRemindersCubit,
                                                            DeleteRemindersState>(
                                                          listener:
                                                              (context, state) {
                                                            state.whenOrNull(
                                                              success: () {
                                                                context
                                                                    .read<
                                                                        GetRemindersCubit>()
                                                                    .getReminders();
                                                              },
                                                            );
                                                          },
                                                          builder:
                                                              (context, state) {
                                                            return ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.r),
                                                              child:
                                                                  PopupMenuButton<
                                                                      String>(
                                                                onSelected: (String
                                                                    value) async {
                                                                  if (value ==
                                                                      'Edit') {
                                                                    await showModalBottomSheet(
                                                                      context:
                                                                          context,
                                                                      isScrollControlled:
                                                                          true,
                                                                      builder:
                                                                          (BuildContext
                                                                              context) {
                                                                        return EditReminders(
                                                                          model:
                                                                              filteredModel[index],
                                                                        );
                                                                      },
                                                                    );
                                                                    context
                                                                        .read<
                                                                            GetRemindersCubit>()
                                                                        .getReminders();
                                                                  } else if (value ==
                                                                      'Delete') {
                                                                    context
                                                                        .read<
                                                                            DeleteRemindersCubit>()
                                                                        .delete(
                                                                            filteredModel[index].id);
                                                                  }
                                                                },
                                                                color: FFColors
                                                                    .grey555555
                                                                    .withOpacity(
                                                                        0.78),
                                                                itemBuilder: (BuildContext
                                                                        context) =>
                                                                    <PopupMenuEntry<
                                                                        String>>[
                                                                  PopupMenuItem<
                                                                      String>(
                                                                    value:
                                                                        'Edit',
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: <Widget>[
                                                                        Text(
                                                                            'Edit',
                                                                            style:
                                                                                TextStyle(color: Colors.white)),
                                                                        SizedBox(
                                                                            width:
                                                                                8),
                                                                        Icon(
                                                                            Icons
                                                                                .edit,
                                                                            color:
                                                                                Colors.white),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  PopupMenuItem<
                                                                      String>(
                                                                    value:
                                                                        'Delete',
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: <Widget>[
                                                                        Text(
                                                                            'Delete',
                                                                            style:
                                                                                TextStyle(color: Colors.red)),
                                                                        SizedBox(
                                                                            width:
                                                                                8),
                                                                        Icon(
                                                                            Icons
                                                                                .delete,
                                                                            color:
                                                                                Colors.red),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                                icon: Icon(
                                                                    Icons
                                                                        .more_horiz,
                                                                    color: Colors
                                                                        .red,
                                                                    size: 21),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    DateFormat('d MMMM').format(
                                                        filteredModel[index]
                                                            .dateTime),
                                                    style: TextStyle(
                                                      color:
                                                          FFColors.grey555555,
                                                      fontSize: 13.h,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                          separatorBuilder: (_, i) =>
                                              SizedBox(height: 16.h),
                                          itemCount: filteredModel.length,
                                        )
                                      : Column(
                                          children: [
                                            SizedBox(height: 24.h),
                                            Center(
                                              child: Text(
                                                'No data yet',
                                                style: TextStyle(
                                                  fontSize: 16.h,
                                                  fontWeight: FontWeight.w500,
                                                  color: FFColors.whate
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 24.h),
                                          ],
                                        ),
                                  SizedBox(height: 20.h),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    )
                  : BlocBuilder<GetTodoCubit, GetTodoState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const Center(
                            child: CircularProgressIndicator()),
                        success: (model) {
                          return model.isNotEmpty
                              ? ListView.separated(
                                  physics:
                                      const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          top: index == 0 ? 16.r : 0,
                                          bottom: index == model.length - 1
                                              ? 100.r
                                              : 0),
                                      child: TodoWidget(
                                        model: model[index],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (_, i) =>
                                      SizedBox(height: 7.r),
                                  itemCount: model.length,
                                )
                              : Padding(
                                  padding: EdgeInsets.only(top: 150.r),
                                  child: Center(
                                    child: Text(
                                      'No tasks for selected date',
                                      style: TextStyle(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            FFColors.whate.withOpacity(0.5),
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
      floatingActionButton: _selectedIndex == 1
          ? FFMotion(
            onPressed: () async {
              await showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return const AddNote();
                },
              );
              context.read<GetTodoCubit>().getTodo();
            },
            child: Container(
              height: 56.h,
              width: 56.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: FFColors.redE80000),
              child: Icon(Icons.add, color: FFColors.whate, size: 24.r),
            ),
          )
          : const SizedBox(),
    );
  }
}

class CustomEvent extends Event {
  final Color color;

  CustomEvent({
    required DateTime date,
    required this.color,
    String title = '',
  }) : super(date: date, title: title);
}
