// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Education.dart';
import 'package:flutter_application_2/experience.dart';
import 'package:flutter_application_2/projects.dart';
import 'package:flutter_application_2/skills.dart';

class CVSectionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('CV Sections'),
        backgroundColor: Colors.blue,
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
            color: Colors.blue,
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
                  leading: Icon(Icons.circle, color: Colors.grey),
                  title: Text('Education'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EducationScreen()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.circle, color: Colors.grey),
                  title: Text('Skills'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SkillsScreen()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.circle, color: Colors.grey),
                  title: Text('Projects'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProjectsScreen()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.circle, color: Colors.grey),
                  title: Text('Experience'),
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
