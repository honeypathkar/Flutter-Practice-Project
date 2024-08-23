import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: OutlinedButton(
              onPressed: () {
                // ignore: avoid_print
                print('Outlined Button clicked');
              },
              child: const Text('Click Me')),
          /* child: ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print('Elevated Button Clicked!');
              },
              child: const Text(
                'Click Here',
              )), */
          /* child: TextButton(
            onPressed: () {
              // ignore: avoid_print
              print("Button Presed");
            },
            child: const Text('Click me'),
            onLongPress: () {
              // ignore: avoid_print
              print('Long Pressed');
            },
          ), */
          /*  child: Container(
            width: 200,
            height: 200,
            color: Colors.cyan,
            child: const Center(
              child: Text(
                'Hello World',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ), */
        ));
  }
}
