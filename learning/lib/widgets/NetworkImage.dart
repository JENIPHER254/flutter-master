import 'package:flutter/material.dart';

class NetworkImg extends StatelessWidget {
  const NetworkImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(4),
      child: Image(
        image: NetworkImage(
          'https://i.pinimg.com/1200x/45/2c/6d/452c6d08c15502cbe9d8375421c8a130.jpg',
        ),
      ),
    );
  }
}
