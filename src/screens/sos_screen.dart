import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:provider/provider.dart';
import '../providers/sos_provider.dart';

class SosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sosProvider = Provider.of<SosProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedButton(
          color: Colors.red,
          onPressed: () => sosProvider.activateSos(),
          child: Text("SOS", style: TextStyle(fontSize: 40, color: Colors.white)),
        ),
      ),
    );
  }
}
