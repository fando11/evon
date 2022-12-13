import 'package:evon/app/data/models/login_response_model.dart';
import 'package:evon/app/data/providers/login_response_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginResponseProvider loginProvider = Get.put(LoginResponseProvider());
  var isPasswordHide = true.obs;

  var username = TextEditingController();
  var password = TextEditingController();

  login() async {
    try {
      await loginProvider.login(username.text, password.text).then((value) {
        if (value.isSuccess == true) {
          Get.defaultDialog(
              title: "Berhasil", content: Text(value.message ?? "No massage"));
        } else {
          Get.defaultDialog(
              title: "Gagal",
              content: Text(value.message ?? "Something Error"));
        }
      });
    } catch (e) {
      Get.defaultDialog(
          title: "No Signal", content: Text("Cari Signyal dlu gih"));
    }
  }
}
