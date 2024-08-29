import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/HomePage.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade400),
        useMaterial3: true,
      ),
      home: const Homepage(),
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
  var number1 = TextEditingController();
  var number2 = TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var result;
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
        body: SizedBox(
            child: Center(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: number1,
                    decoration: InputDecoration(
                        hintText: "Enter Value 1",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11))),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: number2,
                    decoration: InputDecoration(
                        hintText: "Enter Value 2",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11))),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            var n1 = int.parse(number1.text.toString());
                            var n2 = int.parse(number2.text.toString());

                            var sum = n1 + n2;
                            result = "The addition of $n1 and $n2 is $sum";
                          });
                        },
                        tooltip: "Addition",
                        child: const Icon(Icons.add),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            var n1 = int.parse(number1.text.toString());
                            var n2 = int.parse(number2.text.toString());

                            var sub = n1 - n2;
                            result = "The subtraction of $n1 and $n2 is $sub";
                          });
                        },
                        tooltip: "Subtract",
                        child: const Icon(Icons.remove),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            var n1 = int.parse(number1.text.toString());
                            var n2 = int.parse(number2.text.toString());

                            var multi = n1 * n2;
                            result =
                                "The multiplication of $n1 and $n2 is $multi";
                          });
                        },
                        tooltip: "Multiplication",
                        child: const Icon(Icons.clear),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            var n1 = int.parse(number1.text.toString());
                            var n2 = int.parse(number2.text.toString());

                            var div = n1 / n2;
                            result = "The divison of $n1 and $n2 is $div";
                          });
                        },
                        tooltip: "Addition",
                        child: const FaIcon(FontAwesomeIcons.divide),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "${result ?? ""}",
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              )),
        )));
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
