import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    fontFamily: 'Satisfy',
                    fontSize: 45,
                    color: Colors.brown[800],
                  ),
                ),
                Text(
                  'Bir fincan uzağınızda',
                  style: GoogleFonts.overlock(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 200,
                  child: Divider(
                    height: 30.0,
                    color: Colors.black,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.blueGrey[900],
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'siparis@starbuckscoffe.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.blueGrey[900],
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      '+90 555 555 55 55',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
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
