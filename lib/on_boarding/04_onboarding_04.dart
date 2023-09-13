import 'package:flutter/material.dart';
import 'package:grocery_app/on_boarding/sign_in/05_signin.dart';

import '../../constants/colors.dart';


class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();


}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
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

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          content: Container(

            // height: MediaQuery.of(context).size.height*0.65,
            //width:  MediaQuery.of(context).size.width*0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/congrats.png',
                      height: 300,
                      width: 300,
                    ),
                    Center(child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/congrats.png',
                          height: 300,
                          width: MediaQuery.of(context).size.width*0.4,
                        ),
                        const Text(
                          'Congratulations!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: orange,
                          ),
                        ),
                      ],
                    ),)
                  ],
                ),
                //  SizedBox(height: 20),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _firstNameController.text,

                      style: const TextStyle(fontSize: 16, color: purple),
                    ),
                    Text(
                      _lastNameController.text,
                      style: const TextStyle(fontSize: 16, color: purple),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
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
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),),
          actions: [
            TextButton(
              child: const Text('Close'),
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
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
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
              'assets/images/onboarding4.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content Widget
          Positioned(
            top: MediaQuery.of(context).size.height * 0.65 - MediaQuery.of(context).size.height * 0.22,
            left: MediaQuery.of(context).size.width * 0.001,
            right: MediaQuery.of(context).size.width * 0.001,
            child: Container(

             decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.vertical(
                 top: Radius.circular(30.0), // Round the top corners
               ),
             ),
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: orange),
                          ),
                          labelText: 'first name',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    SizedBox(
                      width: textFieldWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: orange),
                          ),
                          labelText: 'last name',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'rafatul3588@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: orange),
                      ),
                    ),
                    controller: _emailController,
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: orange),
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
                const Center(child: Text("terms and condition"),),
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
                SizedBox(height: screenHeight*0.05),
              ],
            ),),

          ),
        ],
      ),
    );
  }
}