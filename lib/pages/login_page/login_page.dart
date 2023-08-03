import 'package:flutter/material.dart';

import '../bottom_nav_pages/bottom_nav/bottom_nav_page.dart';
import 'forgot_password/forgot_password_page.dart';
import 'history_of_category/history_of_category.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.handshake,
            color: Color(0xFF00623B),
          ),
          label: const Text(
            'Welcome back!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: const [
          Image(
            image: AssetImage('assets/images/login/st_logo.png'),
          ),
        ],
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                child: SizedBox(
                  width: screenSize.width * 0.95,
                  child: Column(
                    children: [
                      const Text(
                        'Starbucks Promotion',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Free One',
                                image:
                                    'assets/images/promotions/promotion_1.jpg'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Morning',
                                image:
                                    'assets/images/promotions/promotion_2.jpg'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Happy Hour',
                                image:
                                    'assets/images/promotions/promotion_3.jpg'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Month Day',
                                image:
                                    'assets/images/promotions/promotion_4.jpg'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Fifty',
                                image:
                                    'assets/images/promotions/promotion_5.jpg'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Jom Iftar',
                                image:
                                    'assets/images/promotions/promotion_6.jpg'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: SizedBox(
                  width: screenSize.width * 0.90,
                  child: TextFormField(
                    cursorColor: Colors.green,
                    style: const TextStyle(color: Colors.black),
                    maxLines: 1,
                    onChanged: (value) {},
                    initialValue: '',
                    maxLength: 20,
                    decoration: const InputDecoration(
                      hoverColor: Colors.green,
                      focusColor: Colors.green,
                      icon: Icon(Icons.email_outlined),
                      labelText: 'Email',
                      helperText: 'Email Address',
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: SizedBox(
                  width: screenSize.width * 0.90,
                  child: TextFormField(
                    cursorColor: Colors.green,
                    style: const TextStyle(color: Colors.black),
                    maxLines: 1,
                    onChanged: (value) {},
                    initialValue: '',
                    maxLength: 20,
                    decoration: const InputDecoration(
                      hoverColor: Colors.green,
                      focusColor: Colors.green,
                      icon: Icon(Icons.fingerprint),
                      labelText: 'Password',
                      helperText: 'Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: SizedBox(
                  width: screenSize.width * 0.95,
                  child: ListTile(
                    leading: const Icon(
                      Icons.circle_outlined,
                      color: Colors.green,
                    ),
                    title: const Text(
                      'Remember me',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPassword(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: SizedBox(
                  width: screenSize.width * 0.90,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    icon: const Icon(Icons.gpp_good_outlined),
                    label: const Text('Login'),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green.shade900,
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white24),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.9,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: SizedBox(
                  width: screenSize.width * 0.90,
                  child: IconButton.outlined(
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage('assets/images/login/google.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: SizedBox(
                    width: screenSize.width * 0.90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          child: Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
