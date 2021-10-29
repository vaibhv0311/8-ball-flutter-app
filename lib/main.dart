import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          title: Text("Eight Ball App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num = 1;
  void generate() {
    num = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  print("Button got pressed!");
                  setState(() {
                    generate();
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$num.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//TODO: Add sound
//TODO: Add text to the app
