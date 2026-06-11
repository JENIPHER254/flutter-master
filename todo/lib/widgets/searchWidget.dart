import 'package:flutter/material.dart';

Container searchBar() {
  return Container(
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 8,
          offset: Offset(0, 2),
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(30)),
      border: Border.all(color: const Color.fromARGB(255, 207, 205, 205)),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        hintStyle: TextStyle(color: Colors.grey),
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        contentPadding: EdgeInsets.all(14),
      ),
    ),
  );
}
