import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class ProfileContactField extends StatelessWidget {
  final String title;
  final String schedule;
  final String phoneNumber;
  final String email;

  const ProfileContactField({
    super.key,
    required this.title,
    required this.schedule,
    required this.phoneNumber,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: CommonTheme.titleLarge.copyWith(color: CommonTheme.primaryColorDark)),
        SizedBox(height: hJM(1.5)),
        Text(schedule, style: CommonTheme.bodyLarge, maxLines: 3, overflow: TextOverflow.ellipsis),
        SizedBox(height: hJM(1.5)),
        Row(
          children: [
            Icon(Icons.phone_rounded, size: hJM(3.5), color: CommonTheme.primaryColorDark),
            SizedBox(width: wJM(2)),
            Text(phoneNumber, style: CommonTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: hJM(1.5)),
        Row(
          children: [
            Icon(Icons.email_rounded, size: hJM(3.5), color: CommonTheme.primaryColorDark),
            SizedBox(width: wJM(2)),
            Text(
              email,
              style: CommonTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
