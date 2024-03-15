import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/screens/profile/presentation/models/profile_action_item_model.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:flutter/material.dart';

class ProfileActionListItem extends StatelessWidget {
  final ProfileActionItemModel actionItem;

  const ProfileActionListItem({
    super.key,
    required this.actionItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: actionItem.onTap,
      child: SizedBox(
        height: hJM(19),
        width: wJM(22),
        child: Column(
          children: [
            Container(
              width: wJM(8.5) * 2,
              height: wJM(8.5) * 2,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGreen100),
              child: Icon(actionItem.icon, color: AppColors.green900),
            ),
            SizedBox(height: hJM(1)),
            Text(
              actionItem.text,
              style: CommonTheme.bodyMedium.copyWith(fontWeight: FontWeight.bold),
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
