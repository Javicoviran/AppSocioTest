import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final bool isEnabled;
  final bool readOnly;
  final bool autoFocus;
  final String? errorText;
  final String? label;
  final String? placeHolder;
  final IconData? icon;
  final IconData? errorIcon;
  final bool hasErrorIcon;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final String? initialValue;
  final Function(String)? onChanged;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final ValueChanged<String>? onFieldSubmitted;
  final void Function()? onTap;
  final TextStyle? textStyle;
  final TextEditingController? textEditingController;
  final int? maxLength;

  const Input({
    super.key,
    this.label,
    this.icon,
    this.errorIcon,
    this.onChanged,
    this.initialValue,
    this.isEnabled = true,
    this.readOnly = false,
    this.autoFocus = false,
    this.errorText,
    this.textInputType = TextInputType.text,
    this.validator,
    this.placeHolder,
    this.textInputAction = TextInputAction.next,
    this.focusNode,
    this.onFieldSubmitted,
    this.onTap,
    this.textStyle,
    this.textEditingController,
    this.maxLength,
    this.hasErrorIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (icon != null || label != null)
          Padding(
            padding: EdgeInsets.only(left: wJM(4)),
            child: Row(
              children: [
                if (icon != null) ...[
                   Icon(icon, color: AppColors.green900, size: hJM(4)),
                  SizedBox(width: wJM(1.5)),
                ],
                if (label != null) Text(label!, style: CommonTheme.titleSmall),
              ],
            ),
          ),
        TextFormField(
          initialValue: textEditingController == null ? initialValue : null,
          onTap: onTap,
          onChanged: onChanged,
          controller: initialValue == null ? textEditingController : null,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          autofocus: autoFocus,
          focusNode: focusNode,
          showCursor: !readOnly,
          enabled: isEnabled,
          readOnly: readOnly,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: 1,
          maxLength: maxLength,
          cursorColor: AppColors.green900,
          textAlignVertical: TextAlignVertical.center,
          decoration: CommonTheme.inputDecoration.copyWith(
            label: Text(
              placeHolder ?? "",
              style: CommonTheme.bodyMedium.copyWith(color: CommonTheme.secondaryTextColor),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: EdgeInsets.only(top: 0, bottom: hJM(1), left: 0, right: 0),
            counterText: "",
          ),
          style: CommonTheme.bodyMedium,
        ),
        if (errorText?.isNotEmpty == true)
          Padding(
            padding: EdgeInsets.only(top: hJM(1), left: wJM(5), right: wJM(5)),
            child: Row(
              children: [
                if (hasErrorIcon) ...[
                  Icon(errorIcon ?? Icons.error_outline_outlined, color: CommonTheme.errorColor, size: hJM(3)),
                  SizedBox(width: wJM(1.5)),
                ],
                Text(
                  errorText!,
                  style: CommonTheme.formErrorStyle,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
