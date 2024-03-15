import 'package:app_socio_test/features/more_options/presentation/widgets/more_options.dart';
import 'package:app_socio_test/features/navbar/models/nav_bar_item.dart';
import 'package:app_socio_test/features/home/presentation/widgets/home.dart';
import 'package:app_socio_test/features/auth/login/sig_in.dart';
import 'package:app_socio_test/features/mailbox/widgets/mailbox.dart';
import 'package:app_socio_test/features/purchases/widgets/purchases_menu.dart';
import 'package:flutter/material.dart';

final navBarPages = [const SignIn(), PurchasesMenu(), const Home(), const MailBox(), const MoreOptions()];

const defaultTab = 2;

final navBarItems = [
  NavBarItem(iconData: Icons.article_outlined),
  NavBarItem(iconData: Icons.shopping_bag_outlined),
  NavBarItem(iconData: Icons.home_outlined),
  NavBarItem(iconData: Icons.mail_outlined),
  NavBarItem(iconData: Icons.more_horiz_outlined),
];

final navBarItemsSelected = [
  NavBarItem(iconData: Icons.article),
  NavBarItem(iconData: Icons.shopping_bag),
  NavBarItem(iconData: Icons.home),
  NavBarItem(iconData: Icons.mail),
  NavBarItem(iconData: Icons.more_horiz),
];

final labels = ["Demo", "Pedidos", "Inicio", 'Buzón', 'Más'];
