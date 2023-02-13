import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttendenceScreen extends StatefulWidget {
  const AttendenceScreen({Key? key}) : super(key: key);

  @override
  State<AttendenceScreen> createState() => _AttendenceScreenState();
}

class _AttendenceScreenState extends State<AttendenceScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (this.mounted) {
        setState(
          () {
            gettime();
          },
        );
      }
    });
  }

  DateTime now = DateTime.now();
  gettime() {
    now = DateTime.now();
  }
// print(now.hour.toString() + ":" + now.minute.toString() + ":" + now.second.toString());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF6E3CBC),
                  const Color(0xFFB983FF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          height: 94,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Attendence",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20),
                ),
                margin: EdgeInsets.all(15),
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              "${DateFormat("h:mm").format(now)} ",
              style: TextStyle(fontSize: 52),
            ),
            Text(
              now.second.toString(),
              style: TextStyle(fontSize: 32),
            ),
            Text(
              "  ${DateFormat('a').format(DateTime.now())}",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        Text(
          "${DateFormat('EEEE, MMMM d, y').format(now)}",
          style: TextStyle(fontSize: 22),
        ),
        // SizedBox(
        //   height: 20,
        // ),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.query_builder,
                      color: Colors.deepPurple[700],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "11:32 AM",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Check In"),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.query_builder,
                      color: Colors.deepPurple[700],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "11:32 AM",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Check Out"),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.query_builder,
                      color: Colors.deepPurple[700],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "00 Hr's:25 min",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Working Hr's"),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
