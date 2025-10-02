import 'package:flutter/material.dart';

class settingProvider extends ChangeNotifier {

  ThemeMode currentTheme= ThemeMode.light;

  void changeApplicationTheme (ThemeMode newTheme){
    if(newTheme==currentTheme)return;
    currentTheme=newTheme;
    notifyListeners();

  }

}