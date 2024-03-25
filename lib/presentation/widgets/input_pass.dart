import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class InputPass extends StatefulWidget {
  final bool isEnabled;
  final bool readOnly;
  final bool autoFocus;
  final String? errorText;
  final String? label;
  final String? placeHolder;
  final IconData? icon;
  final bool hasErrorIcon;
  final IconData? errorIcon;
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

  const InputPass({
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
  State<InputPass> createState() => _InputPassState();
}

class _InputPassState extends State<InputPass> {
  late bool _showPassState;

  @override
  void initState() {
    super.initState();
    _showPassState = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.icon != null || widget.label != null)
          Padding(
            padding: EdgeInsets.only(left: wJM(4)),
            child: Row(
              children: [
                if (widget.icon != null) ...[
                  Icon(widget.icon, color: CommonTheme.primaryColor, size: hJM(4)),
                  SizedBox(width: wJM(1.5)),
                ],
                if (widget.label != null) Text(widget.label!, style: CommonTheme.titleSmall),
              ],
            ),
          ),
        TextFormField(
          obscureText: _showPassState,
          initialValue: widget.textEditingController == null ? widget.initialValue : null,
          onTap: widget.onTap,
          onChanged: widget.onChanged,
          controller: widget.initialValue == null ? widget.textEditingController : null,
          onFieldSubmitted: widget.onFieldSubmitted,
          validator: widget.validator,
          autofocus: widget.autoFocus,
          focusNode: widget.focusNode,
          showCursor: !widget.readOnly,
          enabled: widget.isEnabled,
          readOnly: widget.readOnly,
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          maxLines: 1,
          maxLength: widget.maxLength,
          cursorColor: CommonTheme.primaryColor,
          textAlignVertical: TextAlignVertical.center,
          decoration: CommonTheme.inputDecoration.copyWith(
            label: Text(
              widget.placeHolder ?? "",
              style: CommonTheme.bodyMedium.copyWith(color: CommonTheme.secondaryTextColor),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: EdgeInsets.only(top: 0, bottom: hJM(1), left: 0, right: 0),
            counterText: "",
            suffixIcon: GestureDetector(
              onTap: _changePassVisivility,
              child: SizedBox(
                width: wJM(20),
                height: hJM(7),
                child: Icon(
                  size: hJM(4),
                  _showPassState ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                ),
              ),
            ),
          ),
          style: CommonTheme.bodyMedium,
        ),
        if (widget.errorText?.isNotEmpty == true)
          Padding(
            padding: EdgeInsets.only(top: hJM(1), left: wJM(5), right: wJM(5)),
            child: Row(
              children: [
                if (widget.hasErrorIcon) ...[
                  Icon(widget.errorIcon ?? Icons.error_outline_outlined, color: CommonTheme.errorColor, size: hJM(3)),
                  SizedBox(width: wJM(1.5)),
                ],
                Text(
                  widget.errorText!,
                  style: CommonTheme.formErrorStyle,
                ),
              ],
            ),
          ),
      ],
    );
  }

  void _changePassVisivility() {
    if (!mounted) return;
    setState(() {
      _showPassState = !_showPassState;
    });
  }
}
