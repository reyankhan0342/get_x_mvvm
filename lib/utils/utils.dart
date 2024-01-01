import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:get_x_mvvm_porject/res/colors/app_colors.dart';

class Utils
{
  static void fieldFocusChange(BuildContext context,FocusNode currentNode,FocusNode nextNode)
  {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }


  static  toastMassage(String massage)
  {
   Fluttertoast.showToast(msg: massage,
     backgroundColor: AppColors.blackColor,
     gravity: ToastGravity.BOTTOM,

   );
  }

  static snackbar(String title,String massage)
  {
    Get.snackbar(
        title,
        massage);
  }

}