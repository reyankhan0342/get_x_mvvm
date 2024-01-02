// ignore_for_file: equal_keys_in_map

import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter Email',
          'login': 'Login Screen',
          'welcome': 'Welcome\nBack',
          'email_hint': 'Email',
          'password_hint': 'Password',
          'email_lable': 'Enter Email',
          'password_lable': 'Enter Password',
          'button_title': 'Login',
        },
        'ur_PK': {'email_hint': 'ای میل درج کریں۔'},
      };
}
