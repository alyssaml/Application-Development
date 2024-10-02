// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'We did an laboratory activity in coding in C++',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'In Design Analysis of Algorithm I try to use one of its algorithm in making an app',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
