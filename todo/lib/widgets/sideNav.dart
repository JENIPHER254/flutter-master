import 'package:flutter/material.dart';
import 'package:todo/const/colors.dart';

Drawer myDrawer() {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: primary),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/7.jpeg'),
              ),
              SizedBox(height: 10),
              Text(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                'jondoe@gmail.com',
              ),
            ],
          ),
        ),
        ListTile(leading: Icon(Icons.home), title: Text('Home')),
        ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
      ],
    ),
  );
}
