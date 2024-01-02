import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_x_mvvm_porject/res/routes/routes_name.dart';
import 'package:get_x_mvvm_porject/view/login_view/login_screen.dart';
import 'package:get_x_mvvm_porject/view/splash_screen.dart';

class
    AppRoutes
{

   static appRoutes()=>[
       GetPage(
name: RoutesName.SplashScreen,
           page: ()=>SplashScreen(),
           transition: Transition.leftToRightWithFade,
           transitionDuration: Duration(milliseconds:250 ),
       ),
     GetPage(
       name: RoutesName.LoginScreen,
       page: ()=>LoginScreen(),
       transition: Transition.leftToRightWithFade,
       transitionDuration: Duration(milliseconds:250 ),
     )
   ];
}