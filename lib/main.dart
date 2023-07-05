import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/images/starbucks.png'),
                ),
                Text(
                  'Starbucks',
                  style: TextStyle(
                    fontFamily: 'Satisfy-Regular.ttf',
                    fontSize: 45,
                    color: Colors.brown[900],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
