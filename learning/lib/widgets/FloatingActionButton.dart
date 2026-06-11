import 'package:flutter/material.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/');
      },
      backgroundColor: Color.fromARGB(255, 162, 37, 28),
      foregroundColor: Colors.white,
      child: Icon(Icons.one_k_plus),
    );
  }
}
