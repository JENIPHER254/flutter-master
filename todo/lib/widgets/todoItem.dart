import 'package:flutter/material.dart';
import 'package:todo/const/colors.dart';

Container todoItem(BuildContext context) {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          blurRadius: 8,
          offset: Offset(0, 2),
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          trailing: Container(
            child: Icon(Icons.delete, color: secondary),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          title: Text(
            style: TextStyle(decoration: TextDecoration.lineThrough),
            'check my mail',
          ),
          leading: Icon(Icons.check_box, color: primary),
          onTap: () {},
        ),
      ],
    ),
  );
}
