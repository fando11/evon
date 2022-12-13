import 'dart:ui';

import 'package:evon/app/modules/login/views/login_view.dart';
import 'package:evon/app/modules/register/views/register_view.dart';
import 'package:evon/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/evon2.PNG'),
              width: 100,
              height: 100,
            ),
            Text(
              "EVON",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 40),
            Text(
              "Discover upcoming events",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Text("near you",
                style: TextStyle(fontSize: 20, color: Colors.grey)),
            SizedBox(height: 117),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.cyan, Colors.indigo]),
              ),
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.REGISTER);
                  },
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      maximumSize: const Size(300, 50),
                      minimumSize: const Size(300, 50))),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.cyan),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(width: 0.7, color: Colors.indigo),
                      maximumSize: const Size(300, 50),
                      minimumSize: const Size(300, 50))),
            ),
            SizedBox(height: 30),
            Text(
              "Skip for now",
              style: TextStyle(color: Colors.cyan),
            )
          ],
        )),
      ),
    );
  }
}
