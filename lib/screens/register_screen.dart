import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/register_controller.dart';
import '../widgets/localized_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var getcontroller = Get.put(RegisterController());

    return Scaffold(
      appBar: AppBar(title: const LocalizedText('register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: getcontroller.emailController,
              decoration: InputDecoration(labelText: tr('email')),
            ),
            TextField(
              controller: getcontroller.passwordController,
              decoration: InputDecoration(labelText: tr('password')),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: getcontroller.register,
              child: const LocalizedText('register'),
            ),
          ],
        ),
      ),
    );
  }
}
