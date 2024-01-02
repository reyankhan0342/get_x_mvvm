// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_mvvm_porject/res/routes/routes_name.dart';

class SplashService {
  isLogin() {
    Timer(Duration(seconds: 3), () {
      Get.toNamed(RoutesName.LoginScreen);
    });
  }
}
