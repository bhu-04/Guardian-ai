import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map_widget.dart';
import 'sos_button.dart';
import 'contact_tile.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'location_service.dart';
import 'sos_service.dart';
import 'voice_service.dart';

void main() {
  runApp(GuardianAIApp());
}

class GuardianAIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LocationService _locationService = LocationService();
  final SosService _sosService = SosService();
  final VoiceService _voiceService = VoiceService();
  LatLng _initialLocation = LatLng(37.7749, -122.4194);

  @override
  void initState() {
    super.initState();
    _fetchUserLocation();
  }

  Future<void> _fetchUserLocation() async {
    LatLng? location = await _locationService.getCurrentLocation();
    if (location != null) {
      setState(() {
        _initialLocation = location;
      });
    }
  }

  void _triggerSOS() {
    _sosService.sendSOS();
    _voiceService.speak("Emergency SOS Activated. Help is on the way.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guardian AI")),
      body: Column(
        children: [
          Expanded(
            child: MapWidget(initialLocation: _initialLocation),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ContactTile(
              name: "Emergency Contact",
              phoneNumber: "123-456-7890",
              onCall: () {},
            ),
          ),
        ],
      ),
      floatingActionButton: SosButton(onPressed: _triggerSOS),
    );
  }
}