import 'package:flutter/material.dart';
import 'package:grocery_app/on_boarding/01_onboarding_0.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Store app',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Onboarding0(),
    );
  }
}

