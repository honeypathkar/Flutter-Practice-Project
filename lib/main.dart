import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 246, 21, 21),
        ),
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
  // var time = DateTime.now();
  // var colors = [
  //   Colors.pink,
  //   Colors.red,
  //   Colors.deepPurple,
  //   Colors.indigoAccent,
  //   Colors.yellow,
  //   Colors.green,
  //   Colors.blue,
  //   Colors.purple,
  //   Colors.indigo
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: const Center(
            child: SizedBox(
                child: FaIcon(FontAwesomeIcons.instagram,
                    size: 100, color: Colors.red))));
  }
  //     child: GridView.builder(
  //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
  //   itemBuilder: (context, index) {
  //     return Container(
  //       color: colors[index],
  //     );
  //   },
  //   itemCount: colors.length,
  // )

  /* GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(
              color: Colors.indigo,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Colors.lightBlue,
            ),
            Container(
              color: Colors.indigoAccent,
            ),
            Container(
              color: Colors.deepPurple,
            )
          ],
        ) */
}
