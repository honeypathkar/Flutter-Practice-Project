import 'package:flutter/material.dart';

void main() {
  runApp(MyFlutterApp());
}

// ignore: use_key_in_widget_constructors
class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.indigo.shade300,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            // ignore: sort_child_properties_last
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Hello world!',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  margin: const EdgeInsets.all(5),
                  child: const Text(
                    'Hello world!',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.indigo.shade500,
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20),
                    bottomRight: const Radius.circular(20)),
                border: Border.all(color: Colors.black, width: 2.0),
                boxShadow: const [BoxShadow(blurRadius: 5, spreadRadius: 2)]),
          ),
        ),
      ),
    );
  }
}
