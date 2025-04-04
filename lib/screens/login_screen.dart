import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';
import '../controllers/login_controller.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/localized_text.dart';
import '../themes/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController getcontroller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        title: LocalizedText('login', style: Styles.textFontBold(size: 18)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 15,
          children: [
            TextField(
              controller: getcontroller.emailController,
              decoration: InputDecoration(
                labelText: tr('email'),
                labelStyle: Styles.textFontRegular(size: 14),
              ),
            ),
            TextField(
              controller: getcontroller.passwordController,
              decoration: InputDecoration(
                labelText: tr('password'),
                labelStyle: Styles.textFontRegular(size: 14),
              ),
              obscureText: true,
            ),
            CommonButton(
              "login",
              () {
                getcontroller.login();
              },
            ),
            InkWell(
              child: LocalizedText(
                "create_account",
                style: Styles.textFontRegular(size: 12.sp),
              ),
              onTap: () {
                getcontroller.navigateToRegister();
              },
            ),
           
          ],
        ),
      ),
    );
  }
}
