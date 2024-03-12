import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:flutter/material.dart';

class MyProfileListItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const MyProfileListItem({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: wJM(9) * 2,
          height: wJM(9) * 2,
          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.green100),
          child: Icon(icon, color: AppColors.green800),
        ),
        SizedBox(height: hJM(2)),
        Text(text, style: const TextStyle(color: AppColors.green800)),
      ],
    );
  }
}
