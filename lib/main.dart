// ignore_for_file: must_be_immutable

import 'package:cehpoint_project_management/Controllers/authenticationController.dart';
import 'package:cehpoint_project_management/screens/Authentication/login_screen.dart';
import 'package:cehpoint_project_management/screens/Client/client_landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  AuthenticationController authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
