import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_journey/cons/app_string.dart';
import 'package:flutter_bloc_journey/services/api_services/api_client.dart';
import 'package:flutter_bloc_journey/services/exception/app_exception.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkServicesApi implements BaseApiServices {
  // 'Content-Type': 'application/json',
  // 'Accept': 'application/json',
  // 'Authorization': 'Bearer your_token_here',

  Map<String, String> basicHeader() {
    return {'Accept': 'application/json', 'Content-Type': 'application/json'};
  }

  Future<Map<String, String>> authHeader() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': sharedPreferences.getString('token') ?? '',
    };
  }

  @override
  Future<Response> getApi(
    String url, {
    bool isAuthHeader = false,
    bool showResult = false,
  }) async {
    try {
      final response = await http
          .get(
            Uri.parse(url),
            headers: isAuthHeader ? await authHeader() : basicHeader(),
          )
          .timeout(const Duration(seconds: 20));
      if (showResult) {
        debugPrint(
          "=== API Result : \nResponse : ${response.body}\nStatus Code : ${response.statusCode} ",
        );
      }

      if (response.statusCode == 200) {
        return Response(response.body, response.statusCode);
      } else {
        return Response(
          '',
          response.statusCode,
          reasonPhrase: 'Server Error (${response.statusCode})',
        );
      }
    } on SocketException {
      return Response(
        '',
        AppString.noInternetStatusCode,
        reasonPhrase: AppString.noInternetConnection,
      );
    } on TimeoutException {
      return Response(
        '',
        AppString.requestTimeOutStatusCode,
        reasonPhrase: 'Request Timed Out',
      );
    } catch (e) {
      return Response(
        '',
        AppString.unexpectedErrorStatusCode,
        reasonPhrase: '${AppString.unexpectedError}: $e',
      );
    }
  }

  @override
  Future<Response> postApi(
    String url,
    var body, {
    bool isAuthHeader = false,
    bool showResult = false,
  }) async {
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: jsonEncode(body),
            headers: isAuthHeader ? await authHeader() : basicHeader(),
          )
          .timeout(const Duration(seconds: 20));
      if (showResult) {
        debugPrint(
          "=== API Result : \nResponse : ${response.body}\nStatus Code : ${response.statusCode} ",
        );
      }

      if (response.statusCode == 200) {
        return Response(response.body, response.statusCode);
      } else {
        // Server responded but with an error status
        return Response(
          '',
          response.statusCode,
          reasonPhrase: 'Server Error (${response.statusCode})',
        );
      }
    } on SocketException {
      return Response(
        '',
        AppString.noInternetStatusCode,
        reasonPhrase: AppString.noInternetConnection,
      );
    } on TimeoutException {
      return Response(
        '',
        AppString.requestTimeOutStatusCode,
        reasonPhrase: 'Request Timed Out',
      );
    } catch (e) {
      return Response(
        '',
        AppString.unexpectedErrorStatusCode,
        reasonPhrase: '${AppString.unexpectedError}: $e',
      );
    }
  }
}
