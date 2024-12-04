import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:cv/CVSectionScreen.dart';
import 'package:cv/LoginScreen.dart'; // Assuming you have a LoginScreen

class MyCVScreen extends StatefulWidget {
  @override
  _MyCVScreenState createState() => _MyCVScreenState();
}

class _MyCVScreenState extends State<MyCVScreen> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }

  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        title: Text('My CV'),
        backgroundColor: const Color.fromRGBO(207, 165, 180, 1),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            // Navigates to CV Sections Screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CVSectionsScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout_rounded, // Logout icon
              color: Colors.white,
            ),
            onPressed: _logout, // Logout function
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _pickImage, // Trigger image selection when tapped
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(250, 227, 227, 1),
                  shape: BoxShape.circle,
                  image: _selectedImage != null
                      ? DecorationImage(
                          image: FileImage(_selectedImage!),
                          fit: BoxFit.cover,
                        )
                      : const DecorationImage(
                          image: AssetImage('assets/alexa_demie.png'),
                          fit: BoxFit.cover,
                        ),
                ),
                child: _selectedImage == null
                    ? const Icon(
                        Icons.add_a_photo,
                        size: 30,
                        color: Colors.black54,
                      )
                    : null,
              ),
            ),
            SizedBox(height: 16),
            const Text(
              'Alessandra Marie M. Landicho',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            const Text(
              '+639922278393',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 4),
            const Text(
              'alyssaxlandicho@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 32),
            Container(
              width: double.infinity,
              height: 120.0,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(1),
              ),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Professional Goal\n',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold, // Make "Professional Goal" bold
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'To work for an accounting company\n',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal, // Keep the rest of the text normal
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Earn a high salary\n',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal, // Keep the rest of the text normal
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
