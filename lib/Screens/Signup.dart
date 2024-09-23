// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_driver_app/Screens/LoginScreen.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFd2d8f8),
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                "https://i.ibb.co/k0DQxnd/1-removebg-preview-6.png",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            // The login form

            Container(
              margin: EdgeInsets.only(left: 10, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Spacer(flex: 3), // To push the form below the header
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Password Field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      // suffixIcon: Icon(Icons.visibility_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                  SizedBox(height: 16),
                  // Email Field
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 16),
                  // Password Field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),

                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          Text('Remember me'),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Forgot password?'),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Login Button
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
                        primary: Colors.amber, // Background color
                        textStyle: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      child: Text('SIGN UP'),
                    ),
                  ),
                  // Spacer(flex: 2), // To give space below the form
                  // Sign Up Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already  have an account? "),
                      TextButton(
                        onPressed: () {
                          Get.to(LoginScreen());
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 88, 66, 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        )
        // Top right menu icon (AppBar replacement)

        );
  }
}
