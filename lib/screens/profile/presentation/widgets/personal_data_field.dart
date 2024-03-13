import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class PersonalDataField extends StatelessWidget {
  final String title;
  final String content;

  const PersonalDataField({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: CommonTheme.titleMedium.copyWith(color: CommonTheme.primaryColorDark)),
        SizedBox(height: hJM(1.5)),
        Text(content, style: CommonTheme.bodyMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
        SizedBox(height: hJM(1.5)),
        const Divider(height: 0, color: CommonTheme.dividerColor),
      ],
    );
  }
}
