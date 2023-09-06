import 'package:flutter/material.dart';
import 'package:grocery_app/inner_screens/categories/07_categories.dart';
import 'package:grocery_app/on_boarding/01_onboarding_0.dart';
import 'package:grocery_app/on_boarding/01_onboarding_1.dart';
import 'package:grocery_app/on_boarding/sign_in/05_signin.dart';

import 'inner_screens/home/06_home.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Grocery Store app',
      theme: ThemeData(


       // primarySwatch: Colors.orange,
      ),


home:  Categories(),
      //home: const SignIn()
    );
  }
}

