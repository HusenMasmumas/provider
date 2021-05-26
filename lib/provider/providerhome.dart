import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier {
  HomeProvider();
  int check = 1;



  value(int index) {
    check = index;

    notifyListeners();
  }
}