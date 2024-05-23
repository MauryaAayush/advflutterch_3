import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier
{
  double progress = 0;
  String searchtext = '';

  void onchangeprogress(int progress)
  {
    this.progress = progress/100;
    notifyListeners();
  }
}