import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../inner_screens/categories/07_categories.dart';
import '../inner_screens/deals_and_shopping/deals/deals.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/inner_screens/deals_and_shopping/deals/item_deals.dart';
import 'package:grocery_app/inner_screens/home/06_home.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late List<Widget> screens;
  int currentScreen = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    screens = const [
      Home(),
      Deals(),
      Categories(),
    ];
    controller = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreen,
        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home, color: lightYellow),
            icon: Icon(IconlyLight.home),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Image.asset("assets/images/transferb.png"),
            icon: Image.asset("assets/images/transfer.png"),
            label: "transfer",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_cart_sharp, color: lightYellow),
            icon: Icon(Icons.shopping_cart_sharp),
            label: "favorite",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.circle),
            icon: Icon(Icons.circle),
            label: "profile",
          ),
        ],
      ),
    );
  }
}