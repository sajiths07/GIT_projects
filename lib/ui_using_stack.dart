import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack Widget',
      home: MyStackExample(),
    );
  }
}

class MyStackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget Example'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background image
            Image.network(
              'https://www.simplilearn.com/ice9/free_resources_article_thumb/top_5_valuable_ethical_hacking_tools.jpg', // Replace with your image asset path
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // Overlaying content
            Positioned(
              top: 50.0,
              child: Text(
                'Hello, User!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
