// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_mvvm_porject/res/colors/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String lable;
  final TextEditingController controller;
  final FocusNode focusNode;
  void Function(String?)? onChange; // Change here
  String? Function(String?)? validation; // Change here

  CustomTextField({
    Key? key, // Add the key parameter
    this.onChange,
    required this.hint,
    required this.lable,
    required this.validation,
    required this.focusNode,
    required this.controller,
  }) : super(key: key); // Initialize the key in the super constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height * 0.065,
      width: Get.width,
      child: TextFormField(
        onChanged: onChange,
        controller: controller,
        validator: validation,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: hint.tr,
          label: Text(lable.tr),
          labelStyle:
              TextStyle(fontSize: Get.width * 0.025, color: AppColors.amber),
          hintStyle: TextStyle(
            fontSize: Get.width * 0.030,
            color: AppColors.gray700,
            fontWeight: FontWeight.w800,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
