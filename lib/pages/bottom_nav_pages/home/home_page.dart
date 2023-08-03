import 'package:flutter/material.dart';

class HomeScreenAfterLogin extends StatefulWidget {
  const HomeScreenAfterLogin({super.key});

  @override
  State<HomeScreenAfterLogin> createState() => _HomeScreenAfterLoginState();
}

class _HomeScreenAfterLoginState extends State<HomeScreenAfterLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.handshake,
            color: Color(0xFF00623B),
          ),
          label: const Text(
            'Welcome to order page!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: const [
          Image(
            image: AssetImage('assets/images/login/st_logo.png'),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8.0, left: 10, right: 10, bottom: 8),
            child: SearchBar(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.white),
              onChanged: (value) {},
              leading: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.search_outlined),
              ),
              hintText: 'Search for drink',
              shadowColor:
                  MaterialStateColor.resolveWith((states) => Colors.black),
              onTap: () {},
            ),
          ),
          const Expanded(
            child: TabBarExample(),
          ),
        ],
      ),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const TabBar(
            dividerColor: Colors.green,
            labelColor: Colors.green,
            isScrollable: true,
            indicatorColor: Colors.green,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Best Seller',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Last Order',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Cappuccino',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Breakfast',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 90.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/grape.png',
                            drinkName: 'Grape',
                            foodPrice: '\$26',
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/green_tea.png',
                            drinkName: 'green tea',
                            foodPrice: '\$15',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/rainbow_drink.png',
                            drinkName: 'Rainbow Drink',
                            foodPrice: '\$21',
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/fantasy_tail.png',
                            drinkName: 'Fantasy Tail',
                            foodPrice: '\$22',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/red_velvet.png',
                            drinkName: 'Red Velvet',
                            foodPrice: '\$19',
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/coffe2.png',
                            drinkName: 'Mix',
                            foodPrice: '\$56',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 90.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/red_velvet.png',
                            drinkName: 'Red Velvet',
                            foodPrice: '\$19',
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/coffe2.png',
                            drinkName: 'Fantasy Tail',
                            foodPrice: '\$56',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 90.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/rainbow_drink.png',
                            drinkName: 'Rainbow Drink',
                            foodPrice: '\$21',
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/fantasy_tail.png',
                            drinkName: 'Fantasy Tail',
                            foodPrice: '\$22',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/red_velvet.png',
                            drinkName: 'Red Velvet',
                            foodPrice: '\$19',
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/drinks/coffe2.png',
                            drinkName: 'Fantasy Tail',
                            foodPrice: '\$56',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 90.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/breakfast/durum.png',
                            drinkName: 'Durum',
                            foodPrice: '\$26',
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage: 'assets/images/breakfast/sandwich.png',
                            drinkName: 'Sandwich',
                            foodPrice: '\$15',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage:
                                'assets/images/breakfast/turkey_bacon.png',
                            drinkName: 'Turkey Bacon',
                            foodPrice: '\$21',
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: const BuildSingleFood(
                            foodImage:
                                'assets/images/breakfast/breakfast_1.png',
                            drinkName: 'Extra',
                            foodPrice: '\$22',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildSingleFood extends StatelessWidget {
  const BuildSingleFood(
      {super.key,
      required this.foodImage,
      required this.drinkName,
      required this.foodPrice});

  final String foodImage;
  final String drinkName;
  final String foodPrice;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SizedBox(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset(foodImage),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: screenSize.width * 0.05,
                child: Text(
                  foodPrice,
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: screenSize.width * 0.06,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                bottom: 10,
                left: screenSize.width * 0.05,
                child: Text(
                  drinkName,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: screenSize.width * 0.038,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
