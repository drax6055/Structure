import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_template/widgets/localized_text.dart';

class CustomText extends StatelessWidget {
  final String keyText;
  final TextStyle? style;

  const CustomText(this.keyText, {this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(tr(keyText), style: style);
  }
}

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
    this.radius = 30,
    this.textStyle,
    this.disable = false,
    this.borderColor,
    this.borderWidth,
    this.alignment = Alignment.center,
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
      //   foregroundColor: textColor ?? theme.colorScheme.onPrimary,
      //   backgroundColor: Colors.transparent,
      //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(radius),
      //   ),
      //   elevation: elevation ?? 0,
      // ),
      child: Container(
        decoration: decoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
            ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 12.0.h),
        child: Row(
          children: [
            Expanded(
                child: Align(
                    alignment: alignment,
                    child: text(
                      keyText,
                      style: textStyle ??
                          theme.textTheme.bodyMedium?.copyWith(
                            color: textColor ?? theme.colorScheme.onPrimary,
                          ),
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
