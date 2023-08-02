import 'package:flutter/material.dart';

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
                    onPressed: () {},
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

class BuildHistoryOfCategory extends StatelessWidget {
  const BuildHistoryOfCategory({
    super.key,
    required this.screenSize,
    required this.category,
    required this.image,
  });

  final Size screenSize;
  final String category;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          Container(
            height: screenSize.height * 0.17,
            width: screenSize.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: screenSize.height * 0.17,
              width: screenSize.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    category,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade900),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'See the detail',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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

class SendEmail extends StatelessWidget {
  const SendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: const Text(
          'Reset Password',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 32.0, left: 70.0, right: 70.0),
                child: SizedBox(
                  width: screenSize.width * 0.90,
                  child: const Text(
                    'Email Sent!',
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
                      'Please check your email and follow the instructions to reset your password.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: screenSize.width * 0.80,
                  child: Image.asset('assets/images/login/mail.png'),
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
                            'Didn\'t receive the email?',
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
                              'Resend',
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: SizedBox(
                  width: screenSize.width * 0.90,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    label: const Text(
                      'Back to Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
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
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
