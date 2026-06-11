import 'package:flutter/material.dart';
import 'package:todo/const/colors.dart';
import 'package:todo/widgets/appBar.dart';
import 'package:todo/widgets/searchWidget.dart';
import 'package:todo/widgets/sideNav.dart';
import 'package:todo/widgets/todoItem.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        backgroundColor: primary,
        foregroundColor: Colors.white,
        child: Icon(Icons.fmd_good),
      ),
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  todoItem(context),
                  todoItem(context),
                  todoItem(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
