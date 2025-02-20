import 'package:flutter/material.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Timeline")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 5, // Replace with dynamic data
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text("Location ${index + 1}"), // Replace with actual location name
              subtitle: Text("Time: 10:00 AM - 11:00 AM"), // Replace with actual time
              trailing: Icon(Icons.location_on, color: Colors.blue),
              onTap: () {
                // Handle navigation to detailed timeline view
              },
            ),
          );
        },
      ),
    );
  }
}