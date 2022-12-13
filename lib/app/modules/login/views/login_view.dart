import 'package:evon/app/data/models/login_response_model.dart';
import 'package:flutter/material.dart';
import 'package:evon/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                        controller: controller.username,
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
                        obscureText: controller.isPasswordHide.value,
                        controller: controller.password,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.cyan, Colors.indigo]),
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          child: Text("Log in"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent)),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.cyan),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "-------------------------or-------------------------",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 34, 62, 110),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/images/fbIcon.PNG'),
                            width: 40,
                            height: MediaQuery.of(context).size.width,
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text("Log in with Facebook"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 217, 221, 228)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/images/googleIcon.PNG'),
                            width: 40,
                            height: MediaQuery.of(context).size.width,
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Log in with Google",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 51, 49, 49)),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent)),
                        ],
                      ),
                    ),
                    SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an acount? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.REGISTER);
                            Get.delete<LoginController>();
                          },
                          child: Text(
                            "Sign up",
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
