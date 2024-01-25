import 'package:flutter/foundation.dart';

class Auth_Provider extends ChangeNotifier {
  bool _loggedIn = false;

  bool get login => _loggedIn;

  void logedIn() {
    _loggedIn = true;
    notifyListeners();
  }

  void logedOut() {
    _loggedIn = false;
    notifyListeners();
  }
}