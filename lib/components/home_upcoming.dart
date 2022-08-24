import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home_upcoming extends StatelessWidget {
  const home_upcoming({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(5, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Color(0xffDEDCF2),
              ),
              width: double.infinity,
              child: SvgPicture.asset("assets/calendar.svg", height: 200),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upcoming Events",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Public Holiday & Events",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
