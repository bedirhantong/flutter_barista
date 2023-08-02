import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barista/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/presentation.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(
        backgroundImageDecoration: const BackgroundImageDecoration(
          image: AssetImage('assets/images/splash_background.jpg'),
          fit: BoxFit.cover,
        ),
        logo: const Image(
          image: AssetImage('assets/images/starbucks_icon.png'),
          height: 150,
          width: 150,
        ),
        loadingIndicator: const CupertinoActivityIndicator(),
        done: Done(
          const Home(),
        ),
      ),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF685BFF)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
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
                'Just a cup away',
                style: GoogleFonts.overlock(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 200,
                child: Divider(
                  height: 30.0,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(25.0),
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                color: Colors.blueGrey[900],
                child: Text(
                  'Welcome to Starbucks Recipe! In our application, '
                  'you will discover how each coffee fascinates you. '
                  'We offer a unique experience by sharing with you the coffee'
                  ' ingredients and how they are prepared.',
                  style: GoogleFonts.overlock(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.brown[500]!)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'Let\'s find out the recipe!',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
