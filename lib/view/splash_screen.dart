
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_mvvm_porject/res/colors/app_colors.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white

      ),
      child: Text('welcome'.tr,style: TextStyle(
        fontWeight: FontWeight.w800,
        color: AppColors.lime,
          fontSize: Get.width*0.1,
      ),),
    );
  }
}
