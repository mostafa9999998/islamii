import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Settingprovider extends ChangeNotifier {
  SharedPreferences? prefs;
   String currentlocal='en';
  ThemeMode mode = ThemeMode.light ;
  String localkey ='local';
  String moodkey = 'mood';
   void setcurrentlocal(String newlocal){
    currentlocal=newlocal;
    notifyListeners();
    setlocal(newlocal);
  }
  void setmode(ThemeMode newmode){
     mode = newmode;
     notifyListeners();
     setmoode(newmode);
  }
  bool isdark() => mode ==ThemeMode.dark;

  Future<void> setlocal(String newlocal) async{
  await prefs!.setString(localkey, newlocal);
}
 String? getlocal(){
  return prefs!.getString(localkey);
  }
  Future<void> setmoode(ThemeMode themeMode) async{
    String value = (themeMode == ThemeMode.light?'light':'dark');
    await prefs!.setString(moodkey, value);
  }
 String? getmoode(){
    return prefs!.getString(moodkey);
 }

Future<void> loading() async{
    prefs = await SharedPreferences.getInstance();

    if (getlocal() != null){
      currentlocal = getlocal()!;
    }

    if (getmoode() != null){
      mode = (getmoode()=='light'?ThemeMode.light:ThemeMode.dark);
    }
}

}