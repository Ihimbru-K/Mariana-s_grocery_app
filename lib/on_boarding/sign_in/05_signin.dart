import 'package:flutter/material.dart';
import 'package:grocery_app/inner_screens/home/06_home.dart';

import '../../constants/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _passwordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/4onboarding3.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Container(
              height: screenHeight * 0.3,
              width: screenWidth*0.9,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: FittedBox(
                fit: BoxFit.fitHeight,

                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.064),
                        child: CircleAvatar(
                          radius: screenWidth * 0.024,
                          backgroundColor: black,
                          child: Icon(
                            Icons.close,
                            color: white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: black),
                        ),
                      ),
                      controller: TextEditingController(text: 'rafatul3588@gmail.com'),
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.048),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: black),
                        ),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(_passwordVisible ? Icons.visibility_off : Icons.visibility),
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      obscureText: !_passwordVisible,
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.032),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: lightYellow, fontSize: screenWidth * 0.04),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  Container(
                    //padding: EdgeInsets.all(screenWidth * 0.048),
                    width: screenWidth * 0.87,
                    height: screenWidth * 0.13,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: lightYellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),)
            ),
          ),
        ],
      ),
    );
  }
}