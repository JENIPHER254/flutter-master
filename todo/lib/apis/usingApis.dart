import 'package:flutter/material.dart';
import 'api_service.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final api = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("API Demo")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () => api.getPosts(),
              child: const Text("GET (Fetch Data)"),
            ),

            ElevatedButton(
              onPressed: () => api.createPost(),
              child: const Text("POST (Create)"),
            ),

            ElevatedButton(
              onPressed: () => api.updatePost(),
              child: const Text("PUT (Update)"),
            ),

            ElevatedButton(
              onPressed: () => api.deletePost(),
              child: const Text("DELETE (Remove)"),
            ),
          ],
        ),
      ),
    );
  }
}