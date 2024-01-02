
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_mvvm_porject/res/colors/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text('login'.tr,style: TextStyle(
          fontSize: 20,
          color: AppColors.gray50,
          fontWeight: FontWeight.w800
        ),),
      ),
      body: Column
        (
        children: [
 
           Text('welcome'.tr)
        ],
      ),
    );
  }
}
