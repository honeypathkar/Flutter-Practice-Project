import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 95, 221, 228)),
          useMaterial3: true,
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  fontSize: 20,
                  fontFamily: "IOS",
                  fontWeight: FontWeight.w100))),
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
            return Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    // ignore: sort_child_properties_last
                    child: Text(
                        // ignore: unnecessary_string_interpolations
                        '☺️',
                        style: Theme.of(context).textTheme.displayLarge),
                    backgroundColor: Colors.grey,
                    radius: 25,
                  ),
                  title: Text(
                    arrName[index],
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  subtitle: const Text('Number'),
                  trailing: const Icon(Icons.signal_wifi_4_bar),
                ));
          },
          itemCount: arrName.length,
        ));
  }
}
