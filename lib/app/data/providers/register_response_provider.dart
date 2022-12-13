import 'package:get/get.dart';

import '../models/register_response_model.dart';

class RegisterResponseProvider extends GetConnect {
  Future<RegisterResponse> register(String name, String mobile, String email,
      String typeUser, String password, String confirmPassword) async {
    final response =
        await post("http://34.126.79.39:81/api/niaga/auth/register", {
      "name": name,
      "mobile": mobile,
      "email": email,
      "type_user": typeUser,
      "password": password,
      "confirm_password": confirmPassword
    });
    return RegisterResponse.fromJson(response.body);
  }
}
