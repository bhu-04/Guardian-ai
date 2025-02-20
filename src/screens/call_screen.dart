import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallScreen extends StatelessWidget {
  final String contactName;
  final String phoneNumber;

  CallScreen({required this.contactName, required this.phoneNumber});

  void _makeCall() async {
    final Uri callUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);
    } else {
      print('Could not launch $callUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calling $contactName')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.phone, size: 100, color: Colors.green),
          SizedBox(height: 20),
          Text('Calling $contactName...', style: TextStyle(fontSize: 24)),
          SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: _makeCall,
            icon: Icon(Icons.call),
            label: Text('Call Now'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}