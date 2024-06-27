import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  Future<void> setToken(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("TOKEN", value);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("TOKEN");
  }

  Future<void> setUserId(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("userId", value);
  }

  Future<String?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("userId");
  }

  Future<void> setUserName(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("userName", value);
  }

  Future<String?> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("userName");
  }

  void clearPreferences() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  Future<void> setDistrict(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("DISTRICT", value);
  }

  Future<String?> getDistrict() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("DISTRICT");
  }


  Future<void> setEmail(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("EMAIL", value);
  }

  Future<String?> getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("EMAIL");
  }

  Future<void> setIsLoggedIn(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("ISLOGGEDIN", value);
    if(kDebugMode){
      print('Log out successfully');
    }
  }

  Future<bool?> getIsLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool("ISLOGGEDIN");

  }

}
