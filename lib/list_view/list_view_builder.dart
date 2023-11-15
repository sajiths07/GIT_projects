import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView.builder Example',
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  // Sample list of items
  final List<String> items = List.generate(50, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            subtitle: Text('Subtitle for Item ${index + 1}'),
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Handle item tap
              print('Tapped on: ${items[index]}');
            },
          );
        },
      ),
    );
  }
}
