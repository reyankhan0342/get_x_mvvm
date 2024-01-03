// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get_x_mvvm_porject/data/exception_handling.dart';
import 'package:get_x_mvvm_porject/data/response/network/base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiService {
  ///  get data from api
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic reponseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      reponseJson = returnResponse(response);
    } on SocketException {
      throw InternetException(" no internet connection ");
    } on RequestTimeOut {
      throw RequestTimeOut('Time out exception ');
    }

    return reponseJson;
  }

  /// post data to api

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }

    dynamic reponseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(Duration(seconds: 10));
      reponseJson = returnResponse(response);
    } on SocketException {
      throw InternetException(" no internet connection ");
    } on RequestTimeOut {
      throw RequestTimeOut('Time out exception ');
    }

    if (kDebugMode) {
      print(reponseJson);
    }
    return reponseJson;
  }

  /// response exception handling
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic reponseJson = jsonDecode(response.body);
        return reponseJson;

      case 400:
        dynamic reponseJson = jsonDecode(response.body);
        return reponseJson;

      default:
        throw FatchingDataException(
            "data fatching error" + response.statusCode.toString());
    }
  }
}
