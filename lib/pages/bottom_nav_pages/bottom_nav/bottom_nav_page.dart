import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';
import '../location/location_page.dart';
import '../profile/profile_page.dart';
import '../wallet/wallet_page.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

int _currentIndex = 0;

class _BottomNavScreenState extends State<BottomNavScreen> {
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [
    const HomeScreenAfterLogin(),
    const WalletScreen(),
    const LocationBucks(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: DotNavigationBar(
          backgroundColor: Colors.grey.shade300,
          currentIndex: _currentIndex,
          onTap: changePage,
          dotIndicatorColor: Colors.green.shade900,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.coffee_outlined),
              selectedColor: const Color(0xff15771a),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.account_balance_wallet_outlined),
              selectedColor: const Color(0xff15771a),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.location_on_outlined),
              selectedColor: const Color(0xff15771a),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person_outline_rounded),
              selectedColor: const Color(0xff15771a),
            ),
          ],
        ),
      ),
    );
  }
}
