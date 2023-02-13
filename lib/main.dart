// ignore_for_file: unused_import

import 'package:attendence/pages/attendence_screen.dart';
import 'package:attendence/pages/home_screen.dart';
import 'package:attendence/pages/leave.dart';
import 'package:attendence/pages/notification_page.dart';
import 'package:attendence/pages/setting_page.dart';
import 'package:attendence/pages/subPages/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:attendence/pages/subPages/login.dart';
import 'components/drawer_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool clickedCentreFAB = false;
  int selectedIndex = 0;

  void updateTabSelection(int index) {
    clickedCentreFAB = false;
    setState(() {
      selectedIndex = index;
    });
  }

  final screen = [
    HomeScreen(),
    LeavePage(),
    AttendenceScreen(),
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: DrawerItems(),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: FractionalOffset.center,
            child: AnimatedSwitcher(
                child: screen[selectedIndex],
                duration: Duration(milliseconds: 300)),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: AnimatedContainer(
              clipBehavior: Clip.none,
              duration: Duration(milliseconds: 350),
              height:
                  clickedCentreFAB ? MediaQuery.of(context).size.height : 10.0,
              width:
                  clickedCentreFAB ? MediaQuery.of(context).size.height : 10.0,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(clickedCentreFAB ? 0.0 : 300.0),
                  color: Colors.deepPurple[800]),
              child: clickedCentreFAB
                  ? SingleChildScrollView(
                      child: SettingPage(scaffoldKey: _scaffoldKey),
                    )
                  : null,
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //specify the location of the FAB
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[800],
        onPressed: () {
          setState(() {
            clickedCentreFAB =
                !clickedCentreFAB; //to update the animated container
          });
        },
        tooltip: "Centre FAB",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                //update the bottom app bar view each time an item is clicked
                onPressed: () {
                  updateTabSelection(0);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.home,
                  //darken the icon if it is selected or else give it a different color
                  color: selectedIndex == 0
                      ? Color(0xff6E3CBC)
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(1);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.event_available,
                  color: selectedIndex == 1
                      ? Color(0xff6E3CBC)
                      : Colors.grey.shade400,
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(2);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.logout,
                  color: selectedIndex == 2
                      ? Color(0xff6E3CBC)
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(3);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.notifications,
                  color: selectedIndex == 3
                      ? Color(0xff6E3CBC)
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
    );
  }
}
