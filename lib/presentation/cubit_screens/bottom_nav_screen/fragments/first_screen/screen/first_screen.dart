import 'dart:async';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/first_screen/screen/cubit/first_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/first_screen/screen/cubit/first_screen_state.dart';
import 'package:bloc_practice/presentation/hive_screen/const/hive_box_const.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_model/attendance_model/attendance_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // Variables //
  final ValueNotifier<String> _timeString = ValueNotifier("");
  final ValueNotifier<String> _dateString = ValueNotifier("");
  late Timer _timer;

  final ValueNotifier<String?> _stroedCheckin = ValueNotifier(null);
  final ValueNotifier<String?> _storedCheckout = ValueNotifier(null);
  final ValueNotifier<bool?> _storedisCheckin = ValueNotifier(null);

  @override
  void initState() {
    print("Init called from home screen");
    super.initState();

    _updateTime(); // initialize with current time
    //getCacheAttendenceData();

    // Update Time Every 1 Sec //
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  // void getCacheAttendenceData()  {
  //   AttendanceModel cacheData =
  //       HiveBoxConst.instance.checkStateBox.values.toList().first;
  //   if (cacheData != null) {
  //     _stroedCheckin.value = cacheData.checkIn;
  //     _storedCheckout.value = cacheData.checkOut;
  //     _storedisCheckin.value = cacheData.isCheckin;
  //   }
  // }

  // Time Date Formatter Function //
  void _updateTime() {
    final DateTime now = DateTime.now();
    _timeString.value =
        DateFormat('hh:mm:ss a').format(now); // e.g. 05:12:59 PM
    _dateString.value =
        DateFormat('EEEE, MMMM d').format(now); // e.g. Tuesday, September 16
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Drawer(
            backgroundColor: Colors.white,
            child: Icon(Icons.menu),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Welcom"), Text("Shehanul Islam Rahin")],
                ),
                SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                  child: Text("S"),
                )
              ],
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Refresh Complete'),
              content: const Text('The screen has been refreshed.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceAround, // ensures pull-to-refresh works even if content is small
            children: [
              BlocBuilder<CheckinOutCubit, CheckInOutState>(
                builder: (context, state) {
                  return Container(
                    height: 550,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: state.status == checkStatus.checkin
                                ? Colors.red
                                : Colors.green,
                            blurRadius: 5,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            // Time Clock //
                            ValueListenableBuilder(
                              valueListenable: _timeString,
                              builder: (context, timevalue, child) => Text(
                                timevalue,
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            // Current Day and Date//
                            ValueListenableBuilder(
                                valueListenable: _dateString,
                                builder: (context, datevalue, child) =>
                                    Text(datevalue)),

                            SizedBox(
                              height: 10,
                            ),
                            // Tap To Check in Text//
                            Text("Tap to Check in"),
                          ],
                        ),

                        // Check in Check out Button Section
                        Column(
                          children: [
                            InkWell(
                              onTap: () => state.status == checkStatus.checkin
                                  ? context
                                      .read<CheckinOutCubit>()
                                      .checkOut(_timeString.value)
                                  : context
                                      .read<CheckinOutCubit>()
                                      .checkIn(_timeString.value),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 90,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color:
                                            state.status != checkStatus.checkin
                                                ? Colors.green.shade50
                                                : Colors.red.shade50,
                                        borderRadius: BorderRadius.circular(18),
                                        shape: BoxShape.rectangle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: state.status !=
                                                      checkStatus.checkin
                                                  ? Colors.green.shade100
                                                  : Colors.red.shade100,
                                              blurRadius: 2)
                                        ]),
                                  ),
                                  Container(
                                    height: 85,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color:
                                            state.status != checkStatus.checkin
                                                ? Colors.green.shade100
                                                : Colors.red.shade100,
                                        borderRadius: BorderRadius.circular(22),
                                        shape: BoxShape.rectangle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: state.status !=
                                                      checkStatus.checkin
                                                  ? Colors.green.shade200
                                                  : Colors.red.shade200,
                                              blurRadius: 2)
                                        ]),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 80,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color:
                                            state.status != checkStatus.checkin
                                                ? Colors.green.shade500
                                                : Colors.red.shade500,
                                        borderRadius: BorderRadius.circular(25),
                                        shape: BoxShape.rectangle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: state.status !=
                                                      checkStatus.checkin
                                                  ? Colors.green.shade700
                                                  : Colors.red.shade700,
                                              blurRadius: 2)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.fingerprint,
                                          color: Colors.white,
                                          size: 45,
                                        ),
                                        Text(
                                          "Check In",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        // Current Location Section //
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.green,
                                size: 35,
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  width: 250,
                                  height: 40,
                                  child: Text(
                                    "Barikoi Hqsdfafsfsfsfsfsfsfsfsdfsfsfsdfdfsdfsdfsdfsdfsdfsdfsdfsdsdsdssdsdfsdfsdfsdsdfsdfd",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                              Container(
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.replay_circle_filled_rounded,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        // Check in Check out time //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                // check in time
                                Column(
                                  children: [
                                    Icon(
                                      Icons.av_timer_rounded,
                                      size: 35,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(state.checkInTime ?? "--|--"),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Check in",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.grey,
                            ),

                            // check out time
                            Column(
                              children: [
                                Icon(
                                  Icons.av_timer_rounded,
                                  size: 35,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(state.status != checkStatus.checkin
                                    ? state.checkOutTime ?? "--|--"
                                    : "--|--"),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Check Out",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
              // Tag Loction Button //
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                        backgroundColor: WidgetStatePropertyAll(Colors.green)),
                    onPressed: () {},
                    child: Text(
                      "Tag location",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
