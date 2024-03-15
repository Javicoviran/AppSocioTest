import 'package:app_socio_test/features/mailbox/helpers/constant.dart';
import 'package:app_socio_test/features/mailbox/providers/mailbox_controller_provider.dart';
import 'package:app_socio_test/features/mailbox/widgets/mailbox_tabs_item.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MailboxTabs extends ConsumerWidget {
  const MailboxTabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: CommonTheme.baseBarHeight,
      child: Row(
        children: List.generate(
          mailboxItems.length,
          (index) => Expanded(
            child: Center(
              child: MailboxTabsItem(
                iconData: ref.watch(mailboxTabsControllerProvider) == index ? mailboxItemsSelected.elementAt(index).iconData : mailboxItems.elementAt(index).iconData,
                isSelected: ref.watch(mailboxTabsControllerProvider) == index,
                onPressed: () => ref.read(mailboxTabsControllerProvider.notifier).changeTab(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
