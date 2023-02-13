import 'package:flutter/material.dart';

import '../styles/styles.dart';

class MonthCard extends StatelessWidget {
  const MonthCard({
    required this.title,
    required this.icon,
    required this.days,
  });

  final String title;
  final IconData icon;
  final int days;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: shadowSmall,
      height: 115,
      width: 115,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 36,
            color: Color(0xff6E3CBC),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                days.toString(),
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                " days",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
