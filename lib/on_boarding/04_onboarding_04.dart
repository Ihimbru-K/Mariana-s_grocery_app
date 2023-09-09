import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../inner_screens/home/06_home.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _passwordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }
  void _showCreateAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Create Account'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/congrats.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Sign In'),
                onPressed: () {
                  // Add sign-in functionality here
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final textFieldWidth = screenWidth * 0.35;
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/4onboarding2.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content Widget
          Positioned(
            top: MediaQuery.of(context).size.height * 0.75 - MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      child: Text(
                        'Create your account',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: textFieldWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'first name',
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    SizedBox(
                      width: textFieldWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'last name',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),

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
                      "By tapping Sign up you accept all",
                      style: TextStyle(color: lightYellow, fontSize: screenWidth * 0.04),
                    ),
                  ),
                ),
                Center(child: Text("terms and condition"),),
                SizedBox(height: screenHeight*0.05),
                Container(
                  width: screenWidth * 0.4,
                  height: screenWidth * 0.15,
                  child: ElevatedButton(
                    onPressed: () {
                      _showCreateAccountDialog(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightYellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "CREATE AN ACCOUNT",
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
            ),

          ),
        ],
      ),
    );
  }
}