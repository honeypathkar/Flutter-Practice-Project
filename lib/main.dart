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

// ignore: use_key_in_widget_constructors, must_be_immutable
class MyHomePage extends StatelessWidget {
  var arrName = [
    'Honey',
    'Shivansh',
    'Harsh',
    'Gaurav',
    'Shivam',
    'Shubham',
    'Nikhil'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                // ignore: sort_child_properties_last
                child: Text(
                  // ignore: unnecessary_string_interpolations
                  '${arrName[index][0]}',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.grey,
                radius: 25,
              ),
              title: Text(arrName[index]),
              subtitle: const Text('Number'),
              trailing: const Icon(Icons.signal_wifi_4_bar),
            );
          },
          itemCount: arrName.length,
        ));
  }
}
