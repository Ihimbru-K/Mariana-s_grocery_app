import 'package:flutter/material.dart';
import 'package:grocery_app/inner_screens/deals_and_shopping/deals/item_deals.dart';
import 'package:grocery_app/inner_screens/home/06_home.dart';

import '../inner_screens/categories/07_categories.dart';
import '../inner_screens/deals_and_shopping/deals/deals.dart';



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
  screens  = const [
    Home(),Deals(),Categories()
    ];
  controller = PageController(initialPage: currentScreen);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: screens


      ),
    );
  }
}
