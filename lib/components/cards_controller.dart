import 'package:flutter/foundation.dart';

class CardsControllerApp extends ChangeNotifier {
  int _index = 0;
  int get index => _index;

  setPageIndex(int value) {
    _index = value;
    notifyListeners();
  }
}
