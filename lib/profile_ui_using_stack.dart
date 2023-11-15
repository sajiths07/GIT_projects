import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('Famous Profile '),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background Image
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcKoQDLXzej1d9lvsw7_n6Ocf32FHl7MWcmQ&usqp=CAU',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // Profile Avatar
            CircleAvatar(
              radius: 150.0,
              backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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',
              ),
            ),
            // User Name
            Positioned(
              bottom: 100.0,
              child: Text(
                'Ronaldo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Additional Information
            Positioned(
              bottom: 60.0,
              child: Text(
                'Developer ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            Positioned(
              bottom: 40.0,
              child: Text(
                'Football player',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              child: Text(
                'Singer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
