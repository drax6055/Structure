import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../themes/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintTextKey;
  final TextEditingController? controller;
  final TextStyle? style;
  final TextStyle? hintStyle; 
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;

  const CustomTextField({
    Key? key,
    this.hintTextKey,
    this.controller,
    this.style,
    this.hintStyle, 
    this.errorText,
    this.obscureText = false,
    this.keyboardType,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: style,
      obscureText: obscureText,
      keyboardType: keyboardType,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: hintTextKey != null ? tr(hintTextKey!) : null,
        hintStyle: hintStyle ?? styleSmall, 
        errorText: errorText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: white, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: red, width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: red, width: 2.0),
        ),
      ),
    );
  }
}

const TextStyle styleSmall = TextStyle(
  fontSize: 12,
  color: grey,
);
