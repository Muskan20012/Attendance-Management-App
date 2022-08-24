import 'package:flutter/material.dart';

class SettingObject extends StatelessWidget {
  const SettingObject(
      {required this.icon, required this.title, this.desination});
  final String title;
  final IconData icon;
  final Widget? desination;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: desination != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => desination!),
              );
            }
          : () {},
      child: Container(
        width: 160,
        height: 70,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 10,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
