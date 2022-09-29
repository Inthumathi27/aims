
import 'dart:convert';

import 'package:aims/model/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

LoginResponse customerInfo = UserInfo() as LoginResponse;
bool isLoggedUser = false;

Future<bool?> isLoggedInUser() async {
  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('value')) {
      customerInfo =
          LoginResponse.fromJson(json.decode(prefs.getString("value")!));
    }else {
      return isLoggedUser = false;
    }
  }catch (Exception) {

  }
}
