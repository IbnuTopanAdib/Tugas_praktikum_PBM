import 'package:flutter/foundation.dart';

class ShowpassProvider extends ChangeNotifier {
  bool _showPass = true;

  bool get showPass => _showPass;

  showhide() {
    _showPass = !_showPass;
    notifyListeners();
  }
}
