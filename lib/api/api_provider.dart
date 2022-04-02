import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'api_execption.dart';

class ApiProvider {
  Future<dynamic> getWithoutBearer(String url) async {
    final finalUrl = Uri.parse(url);

    var responseJson;
    try {
      final response =
          await http.get((finalUrl), headers: <String, String>{"Accept": "application/json", "Content-type": "application/json", "zoneId": "1"});
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> get(String url, String token) async {
    final finalUrl = Uri.parse(url);
    var responseJson;

    try {
      final response = await http.get(finalUrl,
          headers: <String, String>{"Accept": "application/json", "Content-type": "application/json", "Authorization": "Bearer $token"});

      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postWithoutBearer(String url, Map body) async {
    var responseJson;
    final finalUrl = Uri.parse(url);

    try {
      final response = await http.post(
        finalUrl,
        headers: <String, String>{
          "Accept": "application/json",
          "Content-type": "application/json",
          // 'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(body),
      );
      responseJson = _returnResponse(response);
      print('responseJson: ' + responseJson.toString());
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, String token, Map bodyMap) async {
    final finalUrl = Uri.parse(url);
    var responseJson;

    try {
      final response = await http.post(finalUrl,
          headers: <String, String>{"Accept": "application/json", "Content-type": "application/json", "Authorization": "Bearer $token"},
          body: jsonEncode(bodyMap));
      responseJson = _returnResponse(response);
      print('responseJson: ' + responseJson.toString());
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> put(String url, String token, Map body) async {
    var responseJson;
    final finalUrl = Uri.parse(url);

    var header = {"Accept": "text/plain", "Content-type": "application/json", "Authorization": "Bearer $token"};

    try {
      final response = await http.put(finalUrl, headers: header, body: jsonEncode(body));

      responseJson = _returnResponse(response);
      print('$url : $responseJson');
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        // print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException('Error occured while Communication with Server with StatusCode : ${response.reasonPhrase}');
    }
  }
}
