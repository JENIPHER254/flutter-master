import 'package:flutter/material.dart';
import 'package:todo/const/colors.dart';
import 'package:todo/model/todo.dart';

Container todoItem(
  BuildContext context,
  ToDo todo,
  Function(ToDo) onToggle,
  Function(String) onDelete,
) {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    height: MediaQuery.of(context).size.height * 0.1,
    child: Material(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.delete, color: secondary),
              onPressed: () {
                if (todo.id != null) onDelete(todo.id!);
              },
            ),
            title: Text(
              todo.todoText ?? '',
              style: TextStyle(
                decoration: todo.isDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            leading: Checkbox(
              value: todo.isDone,
              activeColor: primary,
              onChanged: (_) {
                onToggle(todo);
              },
            ),
            onTap: () {
              onToggle(todo);
            },
          ),
        ],
      ),
    ),
  );
}
