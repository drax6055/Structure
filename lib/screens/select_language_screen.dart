import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_template/widgets/localized_text.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../services/shared_preferences_manager.dart';
import '../themes/styles.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final supportedLocales = context.supportedLocales;

    return Scaffold(
      appBar: AppBar(
        title: LocalizedText('select_language',
            style: Styles.textFontBold(size: 18)),
      ),
      body: ListView.builder(
        itemCount: supportedLocales.length,
        itemBuilder: (context, index) {
          final locale = supportedLocales[index];
          return ListTile(
            title: Text(
              locale.languageCode.toUpperCase(),
              style: Styles.textFontRegular(size: 14),
            ),
            onTap: () async {
              await SharedPreferencesManager.setSelectedLanguage(
                  locale.languageCode);
              context.setLocale(locale);
              Get.offNamed(Routes.loginScreen);
            },
          );
        },
      ),
    );
  }
}
