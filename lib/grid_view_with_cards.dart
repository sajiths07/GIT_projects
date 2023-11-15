import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView with Cards',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdXRGBHGVEgqdkLmDfAxMQO003WRSsFVXDSw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa7oEZkQI_lGTsCXB-fCjqYWnvjUxs_6YKMvCDMV0NPfTWOjgAhJJSad4MQ4YI7xfFFcE&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGAt8j1S-hmZ9tdkm5N4d8kOtJaQJg40s4cw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI04GRBTavnotbgcPflJeSDkIWR8OJ6nXIZw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNI67AEaDrJeXwvsRC7CukzgIfIQABjrwEuw&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView with Cards'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
        ),
        itemCount: imageUrls.length, // Number of items in the grid
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5.0,
            child: InkWell(
              onTap: () {
                // Handle card tap
                print('Tapped on Card $index');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Network Image
                  Image.network(
                    imageUrls[index],
                    fit: BoxFit.fill,
                  ),
                  // Text

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
