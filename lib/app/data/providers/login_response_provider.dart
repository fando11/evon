import 'package:get/get.dart';

import '../models/login_response_model.dart';

class LoginResponseProvider extends GetConnect {
    Future<LoginResponse> login(String username, String password) async {
    final response = await post("http://34.126.79.39:81/api/niaga/auth/login",
        {"username": username, "password": password});
    return LoginResponse.fromJson(response.body);
  }
}
