import 'package:app_socio_test/features/navbar/models/nav_bar_item.dart';
import 'package:app_socio_test/screens/home/home.dart';
import 'package:app_socio_test/screens/login/sig_in.dart';
import 'package:app_socio_test/screens/mailbox/widgets/mailbox.dart';
import 'package:app_socio_test/screens/purchases/widgets/purchases_menu.dart';
import 'package:flutter/material.dart';

final navBarPages = [const SignIn(), PurchasesMenu(), const Home(), const MailBox()];

const defaultTab = 2;

final navBarItems = [
  NavBarItem(iconData: Icons.article_outlined),
  NavBarItem(iconData: Icons.shopping_bag_outlined),
  NavBarItem(iconData: Icons.home_outlined),
  NavBarItem(iconData: Icons.mail_outlined),
];

final navBarItemsSelected = [
  NavBarItem(iconData: Icons.article),
  NavBarItem(iconData: Icons.shopping_bag),
  NavBarItem(iconData: Icons.home),
  NavBarItem(iconData: Icons.mail),
];

final labels = [
  "Demo",
  "Pedidos",
  "Inicio",
  'Buzón'
];
