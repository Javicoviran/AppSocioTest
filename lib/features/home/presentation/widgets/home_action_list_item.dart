import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/features/home/presentation/models/action_item_model.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class HomeActionListItem extends StatelessWidget {
  final ActionItemModel actionItem;

  const HomeActionListItem({
    super.key,
    required this.actionItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: actionItem.onTap,
      child: SizedBox(
        height: hJM(20),
        width: wJM(22),
        child: Column(
          children: [
            Container(
              width: wJM(8.5) * 2,
              height: wJM(8.5) * 2,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGreen100),
              child: Icon(actionItem.icon, color: CommonTheme.primaryColor),
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
