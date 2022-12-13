import 'package:evon/app/data/providers/register_response_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RegisterResponseProvider registerProvider =
      Get.put(RegisterResponseProvider());

  var isPasswordHide = true.obs;
  var isConfirmPasswordHide = true.obs;

  var name = TextEditingController();
  var mobile = TextEditingController();
  var email = TextEditingController();
  var typeUser = "PTN";
  var password = TextEditingController();
  var confirmPassword = TextEditingController();

  register() async {
    try {
      await registerProvider
          .register(name.text, mobile.text, email.text, typeUser, password.text,
              confirmPassword.text)
          .then((value) {
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
