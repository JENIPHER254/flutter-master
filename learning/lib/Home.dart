import 'package:flutter/material.dart';
import 'concepts/Classes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Animals animal = Animals('lion', 'wild');
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SafeArea(child: Text('Home')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: animal.cat().map((item) {
                return Text('$item , ');
              }).toList(),
            ),
            Text(animal.category),
          ],
        ),
      ),
    );
  }
}
