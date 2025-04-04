import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../themes/styles.dart';

class LocalizedText extends StatelessWidget {
  final String keyText;
  final TextStyle? style;

  const LocalizedText(this.keyText, {this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      tr(keyText),
      style: style ?? Styles.textFontRegular(size: 14),
    );
  }
}
