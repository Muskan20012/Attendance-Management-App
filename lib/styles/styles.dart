import 'package:flutter/material.dart';

BoxDecoration shadowBig = BoxDecoration(
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
);

BoxDecoration shadowSmall = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(10)),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      offset: Offset(1, 1),
      blurRadius: 2,
    ),
  ],
);
