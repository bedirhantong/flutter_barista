import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:splash_view/source/presentation/presentation.dart';
import 'package:star_sipper/pages/login_page/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(
        backgroundImageDecoration: const BackgroundImageDecoration(
          image:
              AssetImage('assets/images/splash_screen/splash_background.jpg'),
          fit: BoxFit.cover,
        ),
        logo: const Image(
          image: AssetImage('assets/images/splash_screen/starbucks_icon.png'),
          height: 150,
          width: 150,
        ),
        loadingIndicator: const CupertinoActivityIndicator(),
        done: Done(
          const OnBoardingPage(),
        ),
      ),
    ),
  );
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const Home()),
    );
  }

  Widget _buildFullscreenImage(String assetName) {
    return Image.asset(
      assetName,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.white);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.green.shade900,
      allowImplicitScrolling: true,
      autoScrollDuration: 6000,
      infiniteAutoScroll: true,
      pages: [
        PageViewModel(
          title: "Full Screen Page",
          body:
              " To inspire and nurture the human spirit–one person, one cup and one neighborhood at a time.",
          image: _buildFullscreenImage(
              'assets/images/onboarding_screen/onboarding_1.jpg'),
          decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.bottomCenter,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              contentMargin: const EdgeInsets.symmetric(horizontal: 16),
              fullScreen: true,
              bodyFlex: 1,
              imageFlex: 3,
              safeArea: 15,
              pageColor: Colors.black12),
        ),
        PageViewModel(
          title: "Full Screen Page",
          body:
              'Bring a friend and enjoy a Frappuccino.Find stores in your area.',
          image: _buildFullscreenImage(
              'assets/images/onboarding_screen/onboarding_2.jpg'),
          decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.bottomCenter,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              contentMargin: const EdgeInsets.symmetric(horizontal: 16),
              fullScreen: true,
              bodyFlex: 1,
              imageFlex: 3,
              safeArea: 15,
              pageColor: Colors.black12),
        ),
        PageViewModel(
          title: "Full Screen Page",
          body:
              "Bring the Fantasy Tail Frappuccino, or treat yourself to the boldly refreshing Peach Cloud with Jelly Frappuccino.",
          image: _buildFullscreenImage(
              'assets/images/onboarding_screen/onboarding_3.jpg'),
          decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.bottomCenter,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              contentMargin: const EdgeInsets.symmetric(horizontal: 16),
              fullScreen: true,
              bodyFlex: 1,
              imageFlex: 3,
              safeArea: 15,
              pageColor: Colors.black12),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      next: const Icon(Icons.arrow_forward, color: Colors.white),
      done: const Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      curve: Curves.easeInOutCirc,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: const Color(0xFFBDBDBD),
        activeSize: const Size(22.0, 10.0),
        activeColor: Colors.green.shade500,
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
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
      backgroundColor: Colors.white10,
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
              const Text(
                'Starbucks',
                style: TextStyle(
                  fontFamily: 'Satisfy',
                  fontSize: 45,
                  color: Colors.white,
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
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                      (route) => false);
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
