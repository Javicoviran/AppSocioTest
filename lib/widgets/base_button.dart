import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final void Function()? onClick;
  final double? height;
  final double? width;
  final Icon? icon;
  final String? text;
  final Color? buttonTextColor;
  final TextStyle? textStyle;
  final Color borderStyle;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool loading;
  final bool isEnabled;
  final bool preserveColorWhenDisabled;
  final Color? progressIndicatorColor;

  const BaseButton({
    super.key,
    this.onClick,
    this.height,
    this.width,
    this.icon,
    this.text,
    this.buttonTextColor,
    this.textStyle,
    this.borderStyle = CommonTheme.backgroundColor,
    this.backgroundColor = CommonTheme.backgroundColor,
    this.padding,
    this.loading = false,
    this.isEnabled = true,
    this.preserveColorWhenDisabled = false,
    this.progressIndicatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onClick : null,
      child: Container(
        height: height ?? CommonTheme.defaultButtonHeight,
        width: width ?? CommonTheme.defaultButtonWidth,
        padding: padding ?? CommonTheme.defaultButtonPadding,
        decoration: ShapeDecoration(
          color: preserveColorWhenDisabled
              ? backgroundColor
              : isEnabled
                  ? backgroundColor
                  : CommonTheme.disabledColor,
          shape: const StadiumBorder(),
        ),
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: borderStyle),
        ),
        child: Visibility(
          visible: loading,
          replacement: Container(
            margin: EdgeInsets.symmetric(vertical: wJM(1)),
            height: height ?? CommonTheme.defaultButtonHeight,
            width: width ?? CommonTheme.defaultButtonWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) icon!,
                SizedBox(
                  width: wJM(1),
                ),
                if (text != null)
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      text!,
                      style: CommonTheme.bodyMedium.copyWith(color: buttonTextColor ?? CommonTheme.darkButtonTextColor),
                    ),
                  ),
              ],
            ),
          ),
          child: Center(
            child: SizedBox(
              height: (height != null ? height! / 3 : CommonTheme.defaultButtonHeight / 3),
              width: (height != null ? height! / 3 : CommonTheme.defaultButtonHeight / 3),
              child: CircularProgressIndicator(
                color: progressIndicatorColor ?? CommonTheme.darkButtonTextColor,
                strokeWidth: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
