import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'sos_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sosProvider = Provider.of<SosProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Guardian AI'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: sosProvider.sosActive ? Colors.red : Colors.grey,
                shape: CircleBorder(),
                padding: EdgeInsets.all(50),
              ),
              onPressed: () => sosProvider.activateSos(),
              child: Text(
                "SOS",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.map, size: 40),
                onPressed: () => context.push('/map'),
              ),
              IconButton(
                icon: Icon(Icons.contacts, size: 40),
                onPressed: () => context.push('/contacts'),
              ),
              IconButton(
                icon: Icon(Icons.history, size: 40),
                onPressed: () => context.push('/timeline'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}