import 'package:flutter/material.dart';
import 'package:todo/const/colors.dart';

AppBar myAppBar() {
  return AppBar(
    title: Text(
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      'Welcome back',
    ),
    elevation: 8,
    shadowColor: Colors.black45,
    backgroundColor: primary,
    foregroundColor: Colors.white,
    actions: [
      Padding(
        padding: EdgeInsets.all(12),
        child: CircleAvatar(
          radius: 17,
          backgroundImage: AssetImage('assets/7.jpeg'),
        ),
      ),
    ],
  );
}
