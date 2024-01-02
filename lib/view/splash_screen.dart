import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_mvvm_porject/res/colors/app_colors.dart';
import 'package:get_x_mvvm_porject/view_model/controllers/login_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentOrange,
      body: Center(
        child: Text(
          'welcome'.tr,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: AppColors.lime,
            fontSize: Get.width * 0.1,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
