import 'package:app_socio_test/features/member_portal/presentation/widgets/member_portal.dart';
import 'package:app_socio_test/features/more/more_options/presentation/widgets/more_options.dart';
import 'package:app_socio_test/features/navbar/models/nav_bar_item.dart';
import 'package:app_socio_test/features/home/presentation/widgets/home.dart';
import 'package:app_socio_test/features/mailbox/widgets/mailbox.dart';
import 'package:app_socio_test/features/purchases/widgets/purchases_menu.dart';
import 'package:flutter/material.dart';

final navBarPages = [
  const MemberPortal(),
  PurchasesMenu(),
  const Home(),
  const MailBox(),
  const MoreOptions(),
];

const defaultTab = 2;
const mailTab = 3;

final navBarItems = [
  NavBarItem(iconData: Icons.web_rounded),
  NavBarItem(iconData: Icons.shopping_bag_outlined),
  NavBarItem(iconData: Icons.home_outlined),
  NavBarItem(iconData: Icons.mail_outlined),
  NavBarItem(iconData: Icons.more_horiz_outlined),
];

final navBarItemsSelected = [
  NavBarItem(iconData: Icons.web),
  NavBarItem(iconData: Icons.shopping_bag),
  NavBarItem(iconData: Icons.home),
  NavBarItem(iconData: Icons.mail),
  NavBarItem(iconData: Icons.more_horiz),
];

final labels = ["Portal", "Compras", "Inicio", 'Buzón', 'Más'];
