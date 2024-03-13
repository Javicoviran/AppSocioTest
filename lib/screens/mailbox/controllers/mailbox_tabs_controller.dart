import 'package:flutter_riverpod/flutter_riverpod.dart';

class MailboxTabsController extends StateNotifier<int> {
  MailboxTabsController() : super(0);

  void changeTab(int actualTab) {
    if (!mounted) return;
    state = actualTab;
  }

  bool? back() {
    if (!mounted) return null;
    if (state == 0) return false;
    state = 0;
    return true;
  }
}
