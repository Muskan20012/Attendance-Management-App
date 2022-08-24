import 'package:attendence/components/summary_card.dart';
import 'package:flutter/material.dart';

class SummaryCarousel extends StatelessWidget {
  const SummaryCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SummaryCard(
              icon: Icons.calendar_month,
              text: "Appointment",
            ),
            SummaryCard(
              icon: Icons.calendar_month,
              text: "Meeting",
            ),
            SummaryCard(
              icon: Icons.calendar_month,
              text: "Visit",
            ),
            SummaryCard(
              icon: Icons.calendar_month,
              text: "Support Tickets",
            ),
            SummaryCard(
              icon: Icons.calendar_month,
              text: "Appointment",
            ),
          ],
        ),
      ),
    );
  }
}
