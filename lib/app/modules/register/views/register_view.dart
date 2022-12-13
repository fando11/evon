import 'package:evon/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:evon/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(30),
            child: Obx((() => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/evon2.PNG'),
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: controller.name,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Full Name',
                          hintText: 'Full Name',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: controller.mobile,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'No Hp',
                          hintText: 'No Hp',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: controller.email,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: controller.password,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        obscureText: controller.isPasswordHide.value,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(controller.isPasswordHide.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              controller.isPasswordHide.toggle();
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: controller.confirmPassword,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        obscureText: controller.isConfirmPasswordHide.value,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
                          suffixIcon: IconButton(
                            icon: Icon(controller.isConfirmPasswordHide.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              controller.isConfirmPasswordHide.toggle();
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.cyan, Colors.indigo]),
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            controller.register();
                          },
                          child: Text("Sign Up"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an acount? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.LOGIN);
                            Get.delete<RegisterController>();
                          },
                          child: Text(
                            "Log in",
                            style: TextStyle(color: Colors.cyan),
                          ),
                        ),
                      ],
                    )
                  ],
                )))),
      ),
    );
  }
}
