import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/screens/mailbox/helpers/constant.dart';
import 'package:app_socio_test/screens/mailbox/providers/mailbox_controller_provider.dart';
import 'package:app_socio_test/screens/mailbox/widgets/mailbox_tabs.dart';
import 'package:app_socio_test/styles/colors.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/covi_bar.dart';
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
          child: Column(
            children: [
              const CoviBar(),
              const BaseAppBar(
                title: "Área privada",
              ),
              SizedBox(
                width: wJM(100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: hJM(9),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.mail, color: AppColors.lightGreen800),
                            Text("Mi buzón", style: CommonTheme.headlineSmall.copyWith(color: AppColors.lightGreen800)),
                          ],
                        )),
                    const Material(elevation: 5, child: MailboxTabs()),
                    Material(
                      elevation: 1,
                      child: SizedBox(
                        child: mailboxPages.elementAt(ref.watch(mailboxTabsControllerProvider)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
