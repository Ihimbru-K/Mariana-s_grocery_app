import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../inner_screens/home/06_home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
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
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
     // backgroundColor: Colors.transparent,
      //appBar: AppBar(
      //  backgroundColor: Colors.transparent,


      //  leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),),),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding5.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content Widget
          Positioned(
            top: MediaQuery.of(context).size.height * 0.65 - MediaQuery.of(context).size.height * 0.21,
            left: MediaQuery.of(context).size.width * 0.001,
            right: MediaQuery.of(context).size.width * 0.001,

              child: Container(

                decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.0), // Round the top corners
                  ),
                ),
                child:Column(
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
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: CircleAvatar(
                            radius: screenWidth * 0.049,
                            backgroundColor: black,
                            child: Center(child: IconButton(
                              icon: const Icon(
                                Icons.close,
                                color: white,
                              ),
                              onPressed: () {
                                // Handle close button action
                              },
                            ),)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight*0.03,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: black),
                        ),
                      ),
                      controller: TextEditingController(text: 'rafatul3588@gmail.com'),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
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
                  SizedBox(height: screenHeight*0.05),
                  Container(
                    width: screenWidth * 0.4,
                    height: screenWidth * 0.15,
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
                  SizedBox(height: screenWidth * 0.032),
                  Container(height: screenHeight*0.1,)
                ],
              ),)

          ),
        ],
      ),
    );
  }
}