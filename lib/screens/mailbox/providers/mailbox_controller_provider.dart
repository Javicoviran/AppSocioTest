import 'package:app_socio_test/screens/mailbox/controllers/mailbox_tabs_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mailboxTabsControllerProvider = AutoDisposeStateNotifierProvider<MailboxTabsController, int>(
  (ref) => MailboxTabsController(),
);
