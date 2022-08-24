import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  const GradientAppBar({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              tileMode: TileMode.clamp),
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: Text(title),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
