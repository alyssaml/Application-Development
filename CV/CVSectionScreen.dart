// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Education.dart';
import 'package:flutter_application_2/experience.dart';
import 'package:flutter_application_2/projects.dart';
import 'package:flutter_application_2/skills.dart';
import 'package:google_fonts/google_fonts.dart';

class CVSectionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('CV Sections'),
        backgroundColor: const Color.fromRGBO(207, 165, 180, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,), // Back arrow icon
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Column(
        children: [
          // The blue background at the top with a fixed height
          Container(
            width: double.infinity,
            height: 150, // Adjust this value to set the desired height
            color: const Color.fromRGBO(207, 165, 180, 1),
            padding: EdgeInsets.all(16),
            child: SafeArea(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CV Sections',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // The list of CV sections below
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.school, color: Colors.grey),
                  title: Text('Education', style: GoogleFonts.fredoka(fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EducationScreen()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.build_outlined, color: Colors.grey),
                  title: Text('Skills', style: GoogleFonts.fredoka(fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SkillsScreen()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.paste_outlined, color: Colors.grey),
                  title: Text('Projects', style: GoogleFonts.fredoka(fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProjectsScreen()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.local_library_outlined, color: Colors.grey),
                  title: Text('Experience', style: GoogleFonts.fredoka(fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExperienceScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
