import 'package:app_socio_test/features/mailbox/helpers/constant.dart';
import 'package:app_socio_test/features/mailbox/providers/mailbox_controller_provider.dart';
import 'package:app_socio_test/features/mailbox/widgets/mailbox_tabs_item.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MailboxTabs extends ConsumerWidget {
  const MailboxTabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int actualTab = ref.watch(mailboxTabsControllerProvider);
    return SizedBox(
      height: CommonTheme.baseBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          mailboxItems.length,
          (index) => Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: actualTab == index
                    ? const Border(
                        bottom: BorderSide(
                          color: AppColors.green900,
                          width: 4,
                        ),
                      )
                    : const Border(
                        bottom: BorderSide(
                          color: CommonTheme.dividerColor,
                          width: 4,
                        ),
                      ),
              ),
              child: Center(
                child: MailboxTabsItem(
                  iconData: actualTab == index ? mailboxItemsSelected.elementAt(index).iconData : mailboxItems.elementAt(index).iconData,
                  isSelected: actualTab == index,
                  text: mailBoxTexts[index],
                  onPressed: () => ref.read(mailboxTabsControllerProvider.notifier).changeTab(index),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
