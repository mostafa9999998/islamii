import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Settingprovider extends ChangeNotifier {

   String currentlocal='en';
  ThemeMode mode = ThemeMode.light ;
   void setcurrentlocal(String newlocal){
    currentlocal=newlocal;
    notifyListeners();
  }
  void setmode(ThemeMode newmode){
     mode = newmode;
     notifyListeners();
  }
  bool isdark() => mode ==ThemeMode.dark;
}