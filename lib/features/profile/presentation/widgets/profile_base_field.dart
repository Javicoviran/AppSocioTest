import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class ProfileBaseField extends StatelessWidget {
  final String title;
  final String? content;
  final Widget? specialContent;

  const ProfileBaseField({
    super.key,
    required this.title,
    this.content,
    this.specialContent,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: CommonTheme.titleMedium.copyWith(color: CommonTheme.primaryColorDark)),
        if (content != null)
          Column(
            children: [
              SizedBox(height: hJM(1)),
              Text(content!, style: CommonTheme.bodyMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
            ],
          ),
        if (specialContent != null)
          Column(
            children: [
              SizedBox(height: hJM(1)),
              specialContent!,
            ],
          ),
        SizedBox(height: hJM(1.5)),
      ],
    );
  }
}
