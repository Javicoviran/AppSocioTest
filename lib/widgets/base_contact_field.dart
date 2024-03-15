import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class BaseContactField extends StatelessWidget {
  final String phoneNumber;
  final String? title;
  final String? schedule;
  final String? email;
  final String? location;

  const BaseContactField({
    super.key,
    required this.phoneNumber,
    this.title,
    this.schedule,
    this.email,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (title != null) Text(title!, style: CommonTheme.titleLarge.copyWith(color: CommonTheme.primaryColorDark)),
        if (schedule != null)
          Text(schedule!, style: CommonTheme.bodyLarge, maxLines: 3, overflow: TextOverflow.ellipsis),
        Row(
          children: [
            Icon(Icons.phone_rounded, size: hJM(3.5), color: CommonTheme.primaryColorDark),
            SizedBox(width: wJM(2)),
            Text(phoneNumber, style: CommonTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
        if (email != null)
          Row(
            children: [
              Icon(Icons.email_rounded, size: hJM(3.5), color: CommonTheme.primaryColorDark),
              SizedBox(width: wJM(2)),
              Text(
                email!,
                style: CommonTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        if (location != null)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_rounded, size: hJM(3.5), color: CommonTheme.primaryColorDark),
              SizedBox(width: wJM(2)),
              SizedBox(
                width: wJM(60),
                child: Text(
                  location!,
                  style: CommonTheme.bodyLarge.copyWith(fontWeight: FontWeight.bold),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
