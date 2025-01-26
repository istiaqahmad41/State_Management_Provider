import 'package:flutter/cupertino.dart';

class counter_provider extends ChangeNotifier {
  int _count = 0;


  ///access to _count variable
  int getValue(){
         return _count;
  }


  //increment function
  void incrementEvent() {
    _count++;
    notifyListeners();
  }

  //decrement function
  void decrementEvent() {
    if (_count > 0) {
      _count--;
      notifyListeners();
    }
  }
}
