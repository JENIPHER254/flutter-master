import 'package:flutter/material.dart';
import 'package:todo/const/colors.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/widgets/appBar.dart';
import 'package:todo/widgets/searchWidget.dart';
import 'package:todo/widgets/sideNav.dart';
import 'package:todo/widgets/todoItem.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ToDo> _todos = [];

  @override
  void initState() {
    super.initState();
    _todos = ToDo.todoList();
  }

  void _toggleTodo(ToDo todo) {
    setState(() {
      final idx = _todos.indexWhere((t) => t.id == todo.id);
      if (idx != -1) _todos[idx].isDone = !_todos[idx].isDone;
    });
  }

  void _deleteTodo(String id) {
    setState(() {
      _todos.removeWhere((t) => t.id == id);
    });
  }

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
                children: _todos
                    .map(
                      (todo) =>
                          todoItem(context, todo, _toggleTodo, _deleteTodo),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
