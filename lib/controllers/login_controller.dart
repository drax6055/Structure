import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_template/routes/app_pages.dart';
import '../services/dio_service.dart';
import '../models/login_model.dart';
import '../services/network_const.dart';
import '../services/shared_preferences_manager.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    final loginData = {
      "username": emailController.text,
      "password": passwordController.text,
    };

    try {
      final response = await DioService.post(Endpoints.login, loginData);
      final loginModel = LoginModel.fromJson(response.data);

      SharedPreferencesManager.login(loginModel.accessToken, loginModel.refreshToken);
      Get.offNamed(Routes.homeScreen);
    } catch (e) {
      Get.snackbar('Error', 'Login failed: $e');
    }
  }

  void navigateToRegister() {
    Get.toNamed(Routes.registerScreen);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
