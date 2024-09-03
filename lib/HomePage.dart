import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _width = 200.0;
  var _heigth = 100.0;

  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade100,
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                color: Colors.red.shade300,
                width: _width,
                height: _heigth,
                curve: Curves.bounceIn,
                duration: const Duration(seconds: 2)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _heigth = 200.0;
                      flag = false;
                    } else {
                      _width = 200.0;
                      _heigth = 100.0;
                      flag = true;
                    }
                  });
                },
                child: const Text("Animate"))
          ],
        ),
      ),
    );
  }
}
