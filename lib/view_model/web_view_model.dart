import 'package:flutter/cupertino.dart';

class WebViewModel extends ChangeNotifier {
  bool isSelected = false;

  changeSelected(bool currentSelected) {
    isSelected = currentSelected;

    notifyListeners();
  }
}
