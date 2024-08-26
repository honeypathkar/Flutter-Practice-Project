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
  var emailText = TextEditingController();
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
        body: Center(
            // ignore: sized_box_for_whitespace
            child: Container(
                width: 300,
                child: TextField(
                  controller: emailText,
                  keyboardType: TextInputType.phone,
                  // enabled: false,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          String uMail = emailText.text.toString();
                          // ignore: avoid_print
                          print("User email: $uMail");
                        },
                        icon: const Icon(Icons.abc_sharp)),
                    // prefixText: "Enter user name"),
                  ),
                ))));
  }
}
