import 'package:flutter_template/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import '../services/shared_preferences_manager.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () async {
      if (SharedPreferencesManager.isLoggedIn) {
        Biomatric_login();
      } else if (SharedPreferencesManager.isLanguageSelected) {
        Get.offNamed(Routes.loginScreen);
      } else {
        Get.offNamed(Routes.selectLanguageScreen);
      }
    });
  }

  void Biomatric_login() async {
    final LocalAuthentication auth = LocalAuthentication();
    final bool haveBiomatricAuth = await auth.canCheckBiometrics;

    if (haveBiomatricAuth) {
      final bool authenticated = await auth.authenticate(
          localizedReason: "Login in to the Application",
          options: AuthenticationOptions(biometricOnly: true));

      if (authenticated) {
        Get.offNamed(Routes.homeScreen);
      } else {
        Get.snackbar('Error', 'Biometric authentication failed');
      }
    } else {
      Get.snackbar('Error', 'Biometric authentication is not available');
    }
  }
}
