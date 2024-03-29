import 'package:app_socio_test/features/mailbox/helpers/constant.dart';
import 'package:app_socio_test/features/mailbox/providers/mailbox_controller_provider.dart';
import 'package:app_socio_test/features/mailbox/widgets/mailbox_tabs.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/covi_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MailBox extends ConsumerWidget {
  const MailBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              const CoviBar(),
              const BaseAppBar(title: "Mi buzón"),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Material(elevation: 5, child: MailboxTabs()),
                  Material(
                    elevation: 1,
                    child: SizedBox(
                      child: mailboxPages.elementAt(ref.watch(mailboxTabsControllerProvider)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
