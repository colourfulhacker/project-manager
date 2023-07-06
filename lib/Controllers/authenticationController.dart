import 'package:cehpoint_project_management/screens/Client/client_landing_screen.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/project_manager_landing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  TextEditingController projectManagerSecretCode = TextEditingController();
  TextEditingController clientUserName = TextEditingController();
  TextEditingController clientPassword = TextEditingController();

  loginProjectManager() {
    if (projectManagerSecretCode.text == "1234") {
      Get.offAll(() => const ProjectManagerLandingScreen());
    }
  }

  loginClient() {
    if (clientUserName.text == "abc" && clientPassword.text == "1234") {
      Get.offAll(() => const ClientLandingScreen());
    }
  }
}
