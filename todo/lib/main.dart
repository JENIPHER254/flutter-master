import 'package:flutter/material.dart';
import 'package:todo/screens/home.dart';

void main() {
 
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const Home()},
    ),
  );
}
