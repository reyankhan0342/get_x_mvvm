import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
}
