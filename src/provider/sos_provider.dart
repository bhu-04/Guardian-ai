import 'package:flutter/material.dart';

class SosProvider with ChangeNotifier {
  bool _sosActive = false;

  bool get sosActive => _sosActive;

  void activateSos() {
    _sosActive = true;
    notifyListeners();
  }

  void deactivateSos() {
    _sosActive = false;
    notifyListeners();
  }
}
