// ignore_for_file: unused_import, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get_x_mvvm_porject/data/repositery/login_repositery/login_repositery.dart';
import 'package:get_x_mvvm_porject/utils/utils.dart';
import 'package:get_x_mvvm_porject/view/splash_screen.dart';
import 'package:get_x_mvvm_porject/view_model/splash_service.dart';

class LoginController extends GetxController {
  SplashService service = SplashService();

  LoginController() {
    Login();
  }

  void Login() {
    service.isLogin();
  }

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  RxBool loading = false.obs;
  final logApi = LoginRepositery();
  loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    logApi.loginApi(data).then((value) {
      loading.value = false;

      Utils.snackbar('Login', 'Login Successfullay');
    }).onError((error, stackTrace) {
      loading.value = false;
      print(error.toString());
      Utils.snackbar('Error', error.toString());
    });
  }
}
