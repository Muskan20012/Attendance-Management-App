import 'dart:async';

import 'package:attendence/components/gradient_nav.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sliding_switch/sliding_switch.dart';

class RemoteAttendence extends StatefulWidget {
  const RemoteAttendence({Key? key}) : super(key: key);

  @override
  State<RemoteAttendence> createState() => _RemoteAttendenceState();
}

class _RemoteAttendenceState extends State<RemoteAttendence>
    with SingleTickerProviderStateMixin {
  bool home = true;
  late AnimationController controller;
  DateTime selectedDate = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    controller.addListener(() {
      setState(() {
        if (controller.isCompleted) {
          print("hello");
          controller.reverse();
        }
      });
    });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GradientAppBar(title: "Attendence"),
          Container(
            child: Text("Choose remote mode"),
            margin: EdgeInsets.all(20),
          ),
          SlidingSwitch(
            value: home,
            width: 250,
            onChanged: (bool value) {
              home = value;
            },
            height: 55,
            animationDuration: const Duration(milliseconds: 400),
            onTap: () {
              print(home ? "home" : "office");
            },
            onDoubleTap: () {},
            onSwipe: () {},
            textOff: "Office",
            textOn: "Home",
            colorOn: Colors.deepPurple.shade900,
            colorOff: Colors.deepPurple.shade900,
            background: Colors.deepPurple.shade900,
            inactiveColor: Colors.white,
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
          GestureDetector(
            onTapDown: (_) {
              controller.forward();
            },
            onTapCancel: () {
              controller.reverse();
            },
            onTapUp: (_) {
              if (controller.status == AnimationStatus.forward) {
                controller.reverse();
              }
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SizedBox(
                  height: 180,
                  width: 180,
                  child: CircularProgressIndicator(
                    value: 1.0,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.grey.withOpacity(0.1)),
                    strokeWidth: 10,
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 180,
                  child: CircularProgressIndicator(
                    value: controller.value,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    strokeWidth: 10,
                  ),
                ),
                CircleAvatar(
                  radius: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fingerprint, size: 50),
                      Text("Apply Leave")
                    ],
                  ),
                ),
              ],
            ),
          ),
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
      ),
    );
  }
}
