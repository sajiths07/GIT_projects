import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _counterNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    print('HOMEPAGE BUILT');
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _counterNotifier,
          builder: (context, value, _) {
            return Text('Count: $value');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterNotifier.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    _counterNotifier.dispose();
    super.dispose();
  }
}
