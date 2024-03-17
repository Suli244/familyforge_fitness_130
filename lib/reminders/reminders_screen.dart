import 'package:familyforge_fitness_130/core/FF_motin.dart';
import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/reminders/add_reminders.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/get_reminders_cubit/get_reminders_cubit.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    context.read<GetRemindersCubit>().getReminders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reminders',
          style: TextStyle(
            color: FFColors.whate,
            fontSize: 30.h,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<GetRemindersCubit, GetRemindersState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error) => const Center(child: Text('Error')),
                    success: (model) {
                      List<RemindersHiveModel> filteredModel =
                          model.where((item) {
                        return item.dateTime.month == _selectedDate.month &&
                            item.dateTime.year == _selectedDate.year;
                      }).toList();
                      _markedDateMap.clear();

                      Map<DateTime, List<RemindersHiveModel>> groupedEvents =
                          {};
                      for (var event in model) {
                        DateTime dateWithoutTime = DateTime(event.dateTime.year,
                            event.dateTime.month, event.dateTime.day);
                        if (!groupedEvents.containsKey(dateWithoutTime)) {
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
                              onDayPressed:
                                  (DateTime date, List<Event> events) async{
                                setState(() {
                                  _selectedDate = date;
                                });
                              await  showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return AddReminders(
                                     datee:_selectedDate,
                                    );
                                  },
                                );
                                context.read<GetRemindersCubit>().getReminders();
                              },

                              markedDateIconBuilder: (event) {
                                CustomEvent customEvent = event as CustomEvent;
                                return Align(
                                  alignment: Alignment.topLeft,
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

                              thisMonthDayBorderColor: Colors.transparent,
                              height: 420.0,
                              selectedDateTime: _selectedDate,
                              daysHaveCircularBorder: true,
                              markedDatesMap: _markedDateMap,
                              markedDateShowIcon: false,
                              customGridViewPhysics:
                                  const NeverScrollableScrollPhysics(),
                              // markedDateCustomShapeBorder:
                              //     const CircleBorder(),
                              todayTextStyle:
                                  const TextStyle(color: FFColors.whate),
                              //----
                              todayBorderColor: Colors.transparent,
                              todayButtonColor: FFColors.redE80000,
                              dayButtonColor: Colors.transparent,
                              //----
                              selectedDayTextStyle:
                                  const TextStyle(color: FFColors.whate),
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
                            'number of trainings this month'.toUpperCase(),
                            style: TextStyle(
                              color: FFColors.redE80000,
                              fontSize: 13.h,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            '13',
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
                          Text(
                            '13',
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return FFMotion(
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         TransactionsDetail(
                                        //       model: widget.model[index],
                                        //     ),
                                        //   ),
                                        // );
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(16.r),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.r),
                                            color: FFColors.black222222,
                                          ),
                                          child: Container()),
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
                                          color:
                                              FFColors.whate.withOpacity(0.5),
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
            ],
          ),
        ),
      ),
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
