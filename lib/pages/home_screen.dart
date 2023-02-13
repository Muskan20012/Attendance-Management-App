import 'package:attendence/components/home_upcoming.dart';
import 'package:attendence/components/month_card.dart';
import 'package:attendence/components/summary_card.dart';
import 'package:attendence/components/summary_carousel.dart';
import 'package:attendence/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/newbg.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                height: 273,
              ),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.only(left: 15, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good morning",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Md Singh",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width / 5) * 3,
                                child: Text(
                                  "keep doing the good work.You are doing good",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "⛅",
                            style: TextStyle(fontSize: 80),
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Upcoming events",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20),
                      SummaryCarousel(),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            width: MediaQuery.of(context).size.width - 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.exit_to_app_rounded,
                  color: Colors.deepPurple[800],
                  size: 40,
                ),
                Column(
                  children: [
                    Text(
                      "Start Time",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Check in",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        // color: Colors.white,
                        color: Colors.deepPurple[800],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          home_upcoming(),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            width: MediaQuery.of(context).size.width - 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Color(0xff6E3CBC),
                  size: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Appreciate your teammate",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Share Your Story",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        // color: Colors.white,
                        color: Color(0xff6E3CBC),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Upcoming events",
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MonthCard(
                    title: "Late in",
                    icon: Icons.query_builder,
                    days: 2,
                  ),
                  MonthCard(
                    title: "Leave",
                    icon: Icons.query_builder,
                    days: 3,
                  ),
                  MonthCard(
                    title: "Early Leave",
                    icon: Icons.query_builder,
                    days: 4,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
