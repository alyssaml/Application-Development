// ignore_for_file: use_key_in_widget_constructors

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
        backgroundColor: Colors.blue,
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
              backgroundColor: Colors.blue[100],
              child: Text(
                'AL',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
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
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(1),
              ),
              child: Text(
                'Professional Goal',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
