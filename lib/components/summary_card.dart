import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 130,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(1, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.deepPurple[800],
          ),
          SizedBox(height: 10),
          Text(
            "0",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple[800],
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple[800],
            ),
          ),
        ],
      ),
    );
  }
}
