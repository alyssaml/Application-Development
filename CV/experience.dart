// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
        title: Text('Experience'),
        backgroundColor: const Color.fromRGBO(132, 107, 138, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,), // Back arrow icon
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience Details',
              style: GoogleFonts.raleway(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'We did an laboratory activity in coding in C++',
              style: GoogleFonts.lato(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'In Design Analysis of Algorithm I try to use one of its algorithm in making an app',
              style: GoogleFonts.lato(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
