import 'package:flutter/material.dart';
import 'package:learning/concepts/Inheritance.dart';
import 'package:learning/widgets/AssetImage.dart';
import 'package:learning/widgets/FloatingActionButton.dart';
import 'package:learning/widgets/NetworkImage.dart';
import 'concepts/Classes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Animals animal = Animals('lion', 'wild'); //has no access to super
    SuperAnimal superanimal = SuperAnimal(
      'monkey',
      'mammal',
    ); //has access to super
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Flutter'),
        shadowColor: Colors.grey,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 162, 37, 28),
      ),
      body: Container(
        color: Colors.transparent,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              NetworkImg(),
              Asset(),
              SafeArea(child: Text('Home')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: animal.cat().map((item) {
                  return Text('$item , ');
                }).toList(),
              ),
              Text(animal.category),
              Text(superanimal.category),
              Text(
                textAlign: TextAlign.center,
                style: TextStyle(),
                '$superanimal.name : $superanimal.publish',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingAction(),
    );
  }
}
