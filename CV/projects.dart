// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Project Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'A gaming app',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'A search bar',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'A console in C++',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
