import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView.custom',
      home: MyCustomGridView(),
    );
  }
}

class MyCustomGridView extends StatelessWidget {
  // Sample list of items
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('GridView.custom'),
      ),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return Card(
              elevation: 3,
              child: Center(
                child: Text(items[index]),
              ),
            );
          },
          childCount: items.length,
        ),
      ),
    );
  }
}
