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
  int click = 0;

  int clickUp() {
    return click++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        // ignore: sized_box_for_whitespace
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ignore: sized_box_for_whitespace
                InkWell(
                  onTap: () {
                    clickUp();
                    // ignore: avoid_print
                    print('You Have clicked image $click');
                  },
                  onLongPress: () {
                    click = 0;
                    // ignore: avoid_print
                    print('Long Pressed on Image');
                  },
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 300,
                    height: 250,
                    child: Image.asset('assets/images/weather.png'),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 300,
                  height: 250,
                  child: Image.asset('assets/images/imagegallery.png'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print('Outlined Button clicked');
                    },
                    child: const Text('Click Me')),
                ElevatedButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print('Elevated Button Clicked!');
                    },
                    child: const Text(
                      'Click Here',
                    )),
                TextButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print("Button Presed");
                  },
                  child: const Text('Click me'),
                  onLongPress: () {
                    // ignore: avoid_print
                    print('Long Pressed');
                  },
                ),
              ],
            )
          ],
        ) /* Container(
          width: 300,
          height: 300,
          child: Image.asset('assets/images/imagegallery.png'),
        ) */
        );
    /*  child: OutlinedButton(
              onPressed: () {
                // ignore: avoid_print
                print('Outlined Button clicked');
              },
              child: const Text('Click Me')), */
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
  }
}
