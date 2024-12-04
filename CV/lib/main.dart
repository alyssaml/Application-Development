// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cv/LoginScreen.dart'; // Adjust the import path to your file structure.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV App',
      home: LoginScreen(), // Call the LoginScreen here.
      debugShowCheckedModeBanner: false,
    );
  }
}
