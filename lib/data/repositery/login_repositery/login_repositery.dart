import 'package:get_x_mvvm_porject/data/response/network/newwork_api_services.dart';
import 'package:get_x_mvvm_porject/res/app_url/app_url.dart';

class LoginRepositery {
  NetworkApiServices networkApiServices = NetworkApiServices();

  Future loginApi(data) async {
    dynamic reponse = networkApiServices.postApi(data, AppUrl.loginApi);
    return reponse;
  }
}
