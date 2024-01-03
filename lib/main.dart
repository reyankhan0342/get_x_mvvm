// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_x_mvvm_porject/res/Language_changes/language.dart';
import 'package:get_x_mvvm_porject/res/routes/AppRoutes.dart';
import 'package:get_x_mvvm_porject/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale:Locale('en','US'),
      fallbackLocale:Locale('en','US'),
      debugShowCheckedModeBanner:false,
      title:'Flutter Demo',
      theme:ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3:true,
      ),
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

