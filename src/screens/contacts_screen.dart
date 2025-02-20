import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {"name": "Police", "phone": "100"},
    {"name": "Dad", "phone": "9876543210"},
    {"name": "Husband", "phone": "9123456789"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index]['name']!),
            subtitle: Text(contacts[index]['phone']!),
            trailing: IconButton(
              icon: Icon(Icons.phone),
              onPressed: () {
                // Trigger call action
              },
            ),
          );
        },
      ),
    );
  }
}
