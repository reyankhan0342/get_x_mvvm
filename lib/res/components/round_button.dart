import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_mvvm_porject/res/colors/app_colors.dart';
import 'package:http/http.dart';

class RoundButton extends StatelessWidget {
  final title;

  VoidCallback OnTap;
  RoundButton({super.key, required this.OnTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnTap,
      child: Container(
        alignment: Alignment.center,
        width: Get.width * 0.5,
        height: Get.height * 0.050,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title.toString(),
          style: TextStyle(
            fontSize: Get.width * 0.040,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
