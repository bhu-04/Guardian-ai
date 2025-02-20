import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final VoidCallback onCall;

  const ContactTile({
    Key? key,
    required this.name,
    required this.phoneNumber,
    required this.onCall,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(phoneNumber),
      trailing: IconButton(
        icon: Icon(Icons.call, color: Colors.green),
        onPressed: onCall,
      ),
    );
  }
}