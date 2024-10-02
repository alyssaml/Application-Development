// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Degree: Bachelor of Science in Computer Science',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'University: Batangas State University - Alangilan',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Year: 2022 - 2026',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
