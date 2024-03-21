import 'package:app_socio_test/features/mailbox/models/mailbox_tabs_item_view_model.dart';
import 'package:app_socio_test/presentation/helpers/size_extenseion.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class MailboxTabsItem extends StatelessWidget {
  final MailboxTabsItemViewModel mailboxTabsItemViewModel;

  const MailboxTabsItem({
    super.key,
    required this.mailboxTabsItemViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.transparent,
      onPressed: mailboxTabsItemViewModel.onPressed,
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mailboxTabsItemViewModel.iconData, size: 0.033.sh, color: mailboxTabsItemViewModel.isSelected ? CommonTheme.primaryColor : CommonTheme.secondaryColor),
          Text(
            mailboxTabsItemViewModel.text,
            style: CommonTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
