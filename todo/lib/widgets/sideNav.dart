import 'package:flutter/material.dart';

Drawer myDrawer() {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      children: [
        ListTile(leading: Icon(Icons.home), title: Text('Home')),
        ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
      ],
    ),
  );
}
