import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView.extent',
      home: MyExtentGridView(),
    );
  }
}

class MyExtentGridView extends StatelessWidget {
  // Sample list of items
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.extent'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0, // Maximum cross-axis extent for each tile
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: List.generate(
          items.length,
              (index) {
            return Card(
              elevation: 3,
              child: Center(
                child: Text(items[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
