import 'package:app_socio_test/features/mailbox/models/mailbox_item.dart';
import 'package:app_socio_test/features/mailbox/widgets/tabs_content/mails.dart';
import 'package:app_socio_test/features/mailbox/widgets/tabs_content/news.dart';
import 'package:app_socio_test/features/mailbox/widgets/tabs_content/notifications.dart';
import 'package:flutter/material.dart';

const mailboxPages = [News(), Mails(), Notifications()];

final mailboxItems = [
  MailBoxItem(iconData: Icons.auto_stories),
  MailBoxItem(iconData: Icons.mail),
  MailBoxItem(iconData: Icons.notifications),
];

final mailboxItemsSelected = [
  MailBoxItem(iconData: Icons.auto_stories_outlined),
  MailBoxItem(iconData: Icons.mail_outlined),
  MailBoxItem(iconData: Icons.notifications_none),
];
