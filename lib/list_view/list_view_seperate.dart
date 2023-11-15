import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView.separated Example',
      home: MySeparatedListView(),
    );
  }
}

class MySeparatedListView extends StatelessWidget {
  // Sample list of items
  final List<String> items = List.generate(50, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.separated Example'),
      ),
      body: ListView.separated(
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
        separatorBuilder: (context, index) {
          // Define the separator between items
          return Divider(
            height: 1,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
