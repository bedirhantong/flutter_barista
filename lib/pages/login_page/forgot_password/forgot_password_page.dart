import 'package:flutter/material.dart';

import '../send_email/send_email_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: const Text(
          'Forgot Password',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
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
                const EdgeInsets.only(top: 32.0, left: 70.0, right: 70.0),
                child: SizedBox(
                  width: screenSize.width * 0.90,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: SizedBox(
                  width: screenSize.width * 0.90,
                  child: const Text(
                      'Please enter your email address. You will receive a link to create a new password via email.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: screenSize.width * 0.80,
                  child: Image.asset('assets/images/login/forgot_password.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SendEmail(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.lock_reset_rounded),
                    label: const Text('Reset Password'),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green.shade900,
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white24),
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