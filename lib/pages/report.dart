import 'package:attendence/components/gradient_nav.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class ReportPage extends StatefulWidget {
  @override
  State<ReportPage> createState() => ReportPageState();
}

class ReportPageState extends State<ReportPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  DateTime selectedDate = DateTime.now();
  final leaves = [];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  void initState() {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GradientAppBar(
            title: "Report",
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
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
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff6E3CBC)),
                            strokeWidth: 10,
                          ),
                        ),
                        CircleAvatar(
                          radius: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.fingerprint, size: 50),
                              Text("Get Report")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Hold to get report"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 5,
                                ),
                                width: 20,
                              ),
                              Text("Start Date"),
                            ],
                          ),
                          Text(
                            "0",
                            style: TextStyle(fontSize: 26),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 5,
                                ),
                                width: 20,
                              ),
                              Text("End Date"),
                            ],
                          ),
                          Text(
                            "0",
                            style: TextStyle(fontSize: 26),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () => _selectDate(context),
                          icon: Icon(Icons.keyboard_arrow_left)),
                      Text(DateFormat.MMMM().format(selectedDate) +
                          "," +
                          selectedDate.year.toString()),
                      IconButton(
                          onPressed: () => _selectDate(context),
                          icon: Icon(Icons.keyboard_arrow_right)),
                      // Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  Container(
                    child: leaves.length != 0
                        ? SingleChildScrollView(
                            child: Column(
                              children: [Text("hey")],
                            ),
                          )
                        : Container(
                            height: 200,
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                "No report found",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
