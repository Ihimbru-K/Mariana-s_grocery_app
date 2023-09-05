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

  void _togglePasswordVisibility(){
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.height;
    return  Scaffold(

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
              height: screenHeight* 0.5,
              width: screenWidth* 0.8,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: black,
                          child: Icon(Icons.close, color: white, ),
                        ),
                      ),
                    ],),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                  const SizedBox(height: 18.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(

                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: black),
                        ),
                        hintText: 'Password',


                        suffixIcon: IconButton(
                          icon: Icon(_passwordVisible? Icons.visibility_off: Icons.visibility),
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      obscureText: !_passwordVisible,
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Center(child: GestureDetector(onTap: (){},
                    child: const Text("Got Password?", style: TextStyle(color: lightYellow, fontSize: 16),),
                  ),),
                  SizedBox(height: screenHeight*0.06,),
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: screenWidth * 0.87,
                    height: screenWidth * 0.13,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: lightYellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 16,
                              color: black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );}}