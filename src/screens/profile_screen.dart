import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to Settings Screen
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile_pic.png"), // Add profile picture in assets
            ),
            SizedBox(height: 16),

            // User Name
            Text(
              "Amy Jackson", // Replace with dynamic user name
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // Location
            Text(
              "Chennai, India", // Replace with dynamic user location
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),

            // Edit Profile Button
            ElevatedButton(
              onPressed: () {
                // Navigate to Edit Profile Screen
              },
              child: Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
