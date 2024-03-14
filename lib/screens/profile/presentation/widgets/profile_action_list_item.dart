import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:flutter/material.dart';

class ProfileActionListItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onTap;

  const ProfileActionListItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: hJM(19),
        width: wJM(22),
        child: Column(
          children: [
            Container(
              width: wJM(9) * 2,
              height: wJM(9) * 2,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.green100),
              child: Icon(icon, color: AppColors.green900),
            ),
            SizedBox(height: hJM(1)),
            Text(
              text,
              style: const TextStyle(color: AppColors.green900),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
