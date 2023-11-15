import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder Example'),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  // Sample array of elements
  final List<String> myArray = ["Element 1", "Element 2", "Element 3", "Element 4"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myArray.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(myArray[index]),
        );
      },
    );
  }
}
