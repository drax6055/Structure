import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/widgets/localized_text.dart';
import '../themes/styles.dart';

class CommonButton extends StatelessWidget {
  final String keyText;
  final Color? color;
  final Color? textColor;
  final Color? disableColor;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;
  final double radius;
  final bool disable;
  final AlignmentGeometry alignment;
  final Widget? prefix;
  final Widget? postfix;
  final double height;
  final double minWidth;
  final TextStyle? textStyle;
  final VoidCallback? isForceClick;
  final double? borderWidth;
  final Color? borderColor;
  final double? elevation;
  final Widget? child;
  final Decoration? decoration;
  final bool? isGradient;

  const CommonButton(
    this.keyText,
    this.onPressed, {
    super.key,
    this.color,
    this.textColor,
    this.disableColor,
    this.height = 0,
    this.minWidth = double.infinity,
    this.radius = 12,
    this.textStyle,
    this.disable = false,
    this.borderColor,
    this.borderWidth,
    this.alignment = Alignment.center,
    this.prefix,
    this.postfix,
    this.isForceClick,
    this.padding,
    this.elevation,
    this.child,
    this.decoration,
    this.isGradient = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
        decoration: decoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
            ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 8.0.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            prefix == null
                ? const SizedBox()
                : Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: prefix,
                  ),
            Expanded(
                child: Align(
                    alignment: alignment,
                    child: LocalizedText(
                      keyText,
                      style: textStyle ?? Styles.textFontMedium(size: 14),
                    ))),
            postfix == null
                ? const SizedBox()
                : Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: postfix,
                  )
          ],
        ),
      ),
    );
  }
}
