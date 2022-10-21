import 'dart:convert';
import 'package:aims/model/login/awardbanner.dart';
import 'package:aims/model/login/login.dart';
import 'package:aims/utils/api_constants.dart';
import 'package:aims/utils/constant.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Resource<T> {
  final String url;
  T Function(Response response) parse;

  Resource({required this.url, required this.parse});
}

class Webservice {

  Future<LoginResponse> callLoginWithPasswordService(
      {required String emp_id, required String password}) async {
    var url = Uri.parse(ApiConstants.loginURL);
    Map data = {
      'emp_id': emp_id,
      'password': password,
      'token':"1a32e71a46317b9cc6feb7388238c95d",
    };
    //encode Map to JSON
    var body = json.encode(data);
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    final response = await http.post(url, headers: headers, body: body).timeout(
      Duration(seconds: TIME_DURATION),
      onTimeout: () {
        // Time has run out, do what you wanted to do.
        return http.Response('Error', 500);
      },
    );
    print(response.statusCode);
    print(response.body);

    // if (response.statusCode == 200) {
    //   final res = json.decode(response.body);
    //   // final Map<String, dynamic>? loginWithPasswordResultMap = json.decode(res);
    //   return LoginResponse.fromJson(res);
    // }
    // else if (response.statusCode == 500) {
    //   Map<String, dynamic> timeoutResult = {
    //     'statusCode': response.statusCode,
    //     'success': 'false',
    //     'errormsg': TIME_OUT_MSG
    //   };
    //   return timeoutResult;
    // } else {
    //   Map<String, dynamic> errorResult = {
    //     'statusCode': response.statusCode,
    //     'success': 'false',
    //     'errormsg': 'Error'
    //   };
    //   return errorResult;
    // }
    if (response.statusCode == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("loginResponse",response.body.toString());
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }


  // Future<AwardBanner> awardservice() async {
  //   var url = Uri.parse(ApiConstants.awardURL);
  //   Map data = {
  //     'token':"1a32e71a46317b9cc6feb7388238c95d",
  //   };
  //   //encode Map to JSON
  //   var body = json.encode(data);
  //   Map<String, String> headers = {
  //     'Content-type': 'application/json',
  //     'Accept': 'application/json',
  //   };
  //   final response = await http.post(url, headers: headers, body: body).timeout(
  //     Duration(seconds: TIME_DURATION),
  //     onTimeout: () {
  //       // Time has run out, do what you wanted to do.
  //       return http.Response('Error', 500);
  //     },
  //   );
  //   print(response.statusCode);
  //   print(response.body);
  //
  //   // if (response.statusCode == 200) {
  //   //   final res = json.decode(response.body);
  //   //   // final Map<String, dynamic>? loginWithPasswordResultMap = json.decode(res);
  //   //   return LoginResponse.fromJson(res);
  //   // }
  //   // else if (response.statusCode == 500) {
  //   //   Map<String, dynamic> timeoutResult = {
  //   //     'statusCode': response.statusCode,
  //   //     'success': 'false',
  //   //     'errormsg': TIME_OUT_MSG
  //   //   };
  //   //   return timeoutResult;
  //   // } else {
  //   //   Map<String, dynamic> errorResult = {
  //   //     'statusCode': response.statusCode,
  //   //     'success': 'false',
  //   //     'errormsg': 'Error'
  //   //   };
  //   //   return errorResult;
  //   // }
  //   if (response.statusCode == 200) {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     prefs.setString("awardBanner",response.body.toString());
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     return AwardBanner.fromJson(jsonDecode(response.body));
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }
  // }
  Future<AwardBanner> fetchawarddata() async {
    var url = Uri.parse(ApiConstants.awardURL);
    Map data = {
      'token':"1a32e71a46317b9cc6feb7388238c95d",
    };
    //encode Map to JSON
    var body = json.encode(data);
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    final response = await http.post(url, headers: headers, body: body).timeout(
      Duration(seconds: TIME_DURATION),
      onTimeout: () {
        // Time has run out, do what you wanted to do.
        return http.Response('Error', 500);
      },
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("awardBanner",response.body.toString());
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return AwardBanner.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
