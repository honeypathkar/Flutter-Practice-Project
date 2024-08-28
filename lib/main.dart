import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';

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
        // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
        body: Container(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.indigo,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.indigoAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepPurple,
              )
            ],
          ),
        )
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

        );
  }
}
