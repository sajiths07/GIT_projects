import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile with Lottie Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Card Title'),
                subtitle: Text('Subtitle'),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Card Content goes here...',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Lottie.asset(
                        'assets/Animation - 1701331048961.json', // Replace with your Lottie animation file path
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 16),
                      Text('Expandable Content'),
                    ],
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('Subitem 1'),
                    ),
                    ListTile(
                      title: Text('Subitem 2'),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Lottie.asset(
                        'assets/Animation - 1701331048961.json', // Replace with your Lottie animation file path
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 16),
                      Text('Expandable Content'),
                    ],
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('Subitem 1'),
                    ),
                    ListTile(
                      title: Text('Subitem 2'),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Lottie.asset(
                        'assets/Animation - 1701331048961.json', // Replace with your Lottie animation file path
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 16),
                      Text('Expandable Content'),
                    ],
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('Subitem 1'),
                    ),
                    ListTile(
                      title: Text('Subitem 2'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
