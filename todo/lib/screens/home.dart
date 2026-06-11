import 'package:flutter/material.dart';
import 'package:todo/widgets/appBar.dart';
import 'package:todo/widgets/searchWidget.dart';
import 'package:todo/widgets/sideNav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(),
      appBar: myAppBar(),
      body: Column(
        children: [
          searchBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  'All Todos',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
