// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/CVSectionScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV',
      home: MyCVScreen(),
      debugShowCheckedModeBanner: false, // Removes debug banner
    );
  }
}

class MyCVScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        title: Text('My CV'),
        backgroundColor: const Color.fromRGBO(207, 165, 180, 1),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white,), 
          onPressed: () {
            // Navigates to CV Sections Screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CVSectionsScreen()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Circle with initials
            CircleAvatar(
              radius: 50,
              backgroundColor: const Color.fromRGBO(250, 227, 227, 1),
              child: Text(
                'AL',
                style: TextStyle(
                  fontSize: 40,
                  color: const Color.fromRGBO(201, 139, 185, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            
            // Name, Phone, and Email
            Text(
              'Alessandra Marie M. Landicho',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '+639922278393',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 4),
            Text(
              'alyssaxlandicho@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 32),
            
            // Professional Goal
            Container(
              width: double.infinity,
              height: 120.0,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(1),
              ),
              child: Text(
                'Professional Goal',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
