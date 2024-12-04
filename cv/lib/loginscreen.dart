// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cv/MyCVScreen.dart'; // Replace with actual import if necessary.

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    // Basic validation with hardcoded credentials
    if (emailController.text == '' &&
        passwordController.text == '') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyCVScreen()), // Replace with your desired screen.
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: const Color.fromRGBO(207, 165, 180, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: login,
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(207, 165, 180, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
