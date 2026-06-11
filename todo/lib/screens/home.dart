import 'package:flutter/material.dart';
import 'package:todo/widgets/appBar.dart';
import 'package:todo/widgets/sideNav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: myDrawer(), appBar: myAppBar(), body: Container());
  }
}
