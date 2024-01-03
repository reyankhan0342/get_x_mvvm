// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_mvvm_porject/res/colors/app_colors.dart';
import 'package:get_x_mvvm_porject/res/components/customTextField.dart';
import 'package:get_x_mvvm_porject/res/components/round_button.dart';
import 'package:get_x_mvvm_porject/utils/utils.dart';
import 'package:get_x_mvvm_porject/view_model/controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    print('build ===>>>>>');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        title: Text(
          'login'.tr,
          style: TextStyle(
              fontSize: 20,
              color: AppColors.gray50,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * .1,
            ),
            Center(
              child: Text(
                'welcome'.tr,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Get.width * 0.050,
                  color: AppColors.blackColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: Get.height * 0.050,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  CustomTextField(
                    hint: 'email_hint',
                    lable: 'email_lable',
                    focusNode: controller.emailNode,
                    controller: controller.emailController,
                    onChange: (value) {},
                    validation: (value) {
                      if (value!.isEmpty) {
                        //  return 'email error';
                        Utils.snackbar('Email ', 'email is empty ');
                      }
                    },
                  ),
                  SizedBox(
                    height: Get.height * 0.030,
                  ),
                  CustomTextField(
                      hint: 'password_hint',
                      lable: 'password_lable',
                      focusNode: controller.passwordNode,
                      controller: controller.passwordController,
                      onChange: (value) {},
                      validation: (value) {
                        if (value!.isEmpty) {
                          //return 'password error';
                          Utils.snackbar('password ', 'password is empty ');
                        }
                      }),
                  SizedBox(
                    height: Get.height * 0.060,
                  ),
                  Obx(() {
                    return RoundButton(
                      loding: controller.loading.value,
                      OnTap: () {
                        if ((controller.formKey.currentState!.validate())){
                          controller.loginApi();
                        }

                      },
                      title: 'button_title'.tr,
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
