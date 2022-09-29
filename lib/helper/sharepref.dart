
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedprefHelper {
  read(String? key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(key!)!);
  }

  save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }

  saveBool(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  readStr(String key) async {
    final prefs = await SharedPreferences.getInstance();
    String? str = prefs.getString(key);
    return str;
  }

  saveStr(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }
}
