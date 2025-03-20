import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/select_date_cubit/select_date_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/bottom_sheet_title_widget.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDateAndTimeBottomsheet extends StatefulWidget {
  ///To select date and time for booking
  const SelectDateAndTimeBottomsheet({super.key});

  @override
  State<SelectDateAndTimeBottomsheet> createState() =>
      _SelectDateAndTimeBottomsheetState();
}

final kToday = DateTime.now();
final kFirstDay = DateTime.now();
final kLastDay = DateTime(kToday.year, kToday.month + 2, kToday.day);

class _SelectDateAndTimeBottomsheetState
    extends State<SelectDateAndTimeBottomsheet> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // DateTime time = DateTime(2016, 5, 10, 22, 35);

  DateTime dateAndTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.85,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: padding,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sbox20,
              const BottomSheetIconandTitleWidget(
                icon: Icons.location_on_outlined,
                title: 'When should Neha arrive?',
              ),
              sbox20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding15),
                child: Text(
                  'According to this package, the professional will be performing for 2 hours with a 15 min break in the middle.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: colorblack.withOpacity(0.7),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TableCalendar(
                  calendarBuilders: CalendarBuilders(
                    // todayBuilder: (context, day, focusedDay) {
                    //   return null;
                    // },
                    headerTitleBuilder: (context, day) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Row(
                          children: [
                            CalenderContainerWidget(day: day, format: 'EEEE'),
                            CalenderContainerWidget(day: day, format: 'MMMM'),
                            CalenderContainerWidget(day: day, format: 'd'),
                            const Spacer(),
                            CalenderContainerWidget(day: day, format: 'y'),
                          ],
                        ),
                      );
                    },
                  ),
                  rangeStartDay: DateTime.now(),
                  headerStyle: HeaderStyle(
                      titleTextFormatter: (date, locale) {
                        return DateFormat.yM(locale).format(date);
                      },
                      leftChevronVisible: false,
                      rightChevronVisible: false,
                      titleCentered: true,
                      formatButtonVisible: false),
                  firstDay: kFirstDay,
                  lastDay: kLastDay,
                  focusedDay: _focusedDay,
                  calendarFormat: _calendarFormat,
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: true,
                    disabledDecoration: BoxDecoration(
                        color: colorgrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  selectedDayPredicate: (day) {
                    // Use `selectedDayPredicate` to determine which day is currently selected.
                    // If this returns true, then `day` will be marked as selected.

                    // Using `isSameDay` is recommended to disregard
                    // the time-part of compared DateTime objects.
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      // Call `setState()` when updating the selected day
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;

                        dateAndTime = selectedDay;
                      });
                    }
                  },
                  onFormatChanged: (format) {
                    if (_calendarFormat != format) {
                      // Call `setState()` when updating calendar format
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    // No need to call `setState()` here
                    _focusedDay = focusedDay;
                  },
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AvailableDayWidget(
                            color: colorred,
                            text: 'Selected',
                          ),
                          AvailableDayWidget(
                            color: colorgrey,
                            text: 'Not Available',
                          ),
                          AvailableDayWidget(
                            color: colorwhite,
                            text: 'Available',
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 50,
                          child: ButtonWidget(
                            width: width * 0.35,
                            text: 'Clear',
                            color: colorgrey,
                            buttonColor: colorblack,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: ButtonWidget(
                            width: width * 0.35,
                            text: 'Apply',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              sbox,
              const BottomSheetIconandTitleWidget(
                icon: Icons.location_on_outlined,
                title: 'What time should Neha arrive?',
              ),
              Padding(
                padding: const EdgeInsets.all(padding15),
                child: Text(
                  'According to this package, the professional will be performing for 2 hours with a 15 min break in the middle.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: colorblack.withOpacity(0.7),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    DropDownTimeWidget(
                      width: width,
                      hintText: 'Start',
                      text: DateFormat('jmv').format(dateAndTime),
                      onTap: () {
                        showCupertinoModalPopup<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 220,
                                margin: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom,
                                ),
                                padding: const EdgeInsets.only(top: 8.0),
                                color: colorwhite,
                                child: CupertinoDatePicker(
                                  initialDateTime: dateAndTime,
                                  mode: CupertinoDatePickerMode.time,
                                  use24hFormat: true,
                                  // This is called when the user changes the time.
                                  onDateTimeChanged: (DateTime newTime) {
                                    setState(() {
                                      dateAndTime = newTime;
                                    });
                                  },
                                ),
                              );
                            });
                      },
                    ),
                    // const Spacer(),
                    // DropDownTimeWidget(
                    //   width: width,
                    //   hintText: 'End',
                    //   text: '${time.hour}.${time.minute}',
                    //   onTap: () {
                    //     showCupertinoModalPopup<void>(
                    //         context: context,
                    //         builder: (BuildContext context) {
                    //           return Container(
                    //             height: 220,
                    //             margin: EdgeInsets.only(
                    //               bottom:
                    //                   MediaQuery.of(context).viewInsets.bottom,
                    //             ),
                    //             padding: const EdgeInsets.only(top: 8.0),
                    //             color: colorwhite,
                    //             child: CupertinoDatePicker(
                    //               initialDateTime: time,
                    //               mode: CupertinoDatePickerMode.time,
                    //               use24hFormat: true,
                    //               // This is called when the user changes the time.
                    //               onDateTimeChanged: (DateTime newTime) {
                    //                 setState(() => time = newTime);
                    //               },
                    //             ),
                    //           );
                    //         });
                    //   },
                    // ),
                  ],
                ),
              ),
              sbox20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ButtonWidget(
                  text: 'Proceed',
                  width: width,
                  onPressed: () {
                    context
                        .read<SelectDateCubit>()
                        .selectDate(isDateAdded: true, date: dateAndTime);
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CalenderContainerWidget extends StatelessWidget {
  const CalenderContainerWidget({
    super.key,
    required this.format,
    required this.day,
  });
  final String format;
  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: colorred.withOpacity(0.2),
          ),
          height: 30,
          child: Center(
              child: format == "d"
                  ? Text('${DateFormat(format).format(day)}th',
                      style: const TextStyle(fontSize: 17))
                  : Text(DateFormat(format).format(day),
                      style: const TextStyle(fontSize: 17))),
        ),
      ),
    );
  }
}

class DropDownTimeWidget extends StatelessWidget {
  const DropDownTimeWidget({
    super.key,
    required this.width,
    required this.hintText,
    required this.text,
    this.onTap,
  });

  final double width;
  final String hintText;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: SizedBox(
        width: width * 0.4,
        child: TextField(
          decoration: InputDecoration(
              enabled: false,
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.watch_later_outlined, size: 22),
                  sboxW5,
                  Text(hintText, style: const TextStyle(fontSize: 20)),
                ],
              ),
              hintText: text,
              suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
              hintStyle: const TextStyle(color: colorblack),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        ),
      ),
    );
  }
}

class AvailableDayWidget extends StatelessWidget {
  const AvailableDayWidget({
    super.key,
    required this.color,
    required this.text,
  });
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: color,
                border: Border.all(
                    width: 0.5, color: Colors.black.withOpacity(0.5))),
          ),
          sboxW,
          Text(
            text,
            style: TextStyle(color: colorblack.withOpacity(0.5), fontSize: 16),
          )
        ],
      ),
    );
  }
}
