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
  late List screens;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  screens  = const [
    Home(),Deals(),Categories()
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [


      ],),
    );
  }
}
