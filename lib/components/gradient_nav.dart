// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                const Color(0xff6E3CBC),
                const Color(0xFFB983FF),
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
