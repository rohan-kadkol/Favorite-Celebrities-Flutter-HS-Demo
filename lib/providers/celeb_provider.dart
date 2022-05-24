import 'package:flutter/cupertino.dart';

class CelebProvider extends ChangeNotifier {
  bool _isPerforming = false;
  bool _isBuyingTwitter = false;
  bool _isCross = false;

  bool get isPerforming => _isPerforming;
  bool get isBuyingTwitter => _isBuyingTwitter;
  bool get isCross => _isCross;

  void changeIsPerforming() {
    _isPerforming = !_isPerforming;
    notifyListeners();
  }

  void changeIsBuyingTwitter() {
    _isBuyingTwitter = !_isBuyingTwitter;
    notifyListeners();
  }

  void changeIsCross() {
    _isCross = !_isCross;
    notifyListeners();
  }
}
