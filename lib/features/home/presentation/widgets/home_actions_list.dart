import 'package:app_socio_test/features/home/presentation/models/action_item_model.dart';
import 'package:app_socio_test/features/home/presentation/widgets/home_action_list_item.dart';
import 'package:flutter/material.dart';

class HomeActionsList extends StatelessWidget {
  const HomeActionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        HomeActionListItem(
          actionItem: ActionItemModel(
            text: 'Portal del socio',
            icon: Icons.web_rounded,
            onTap: () => {},
          ),
        ),
        HomeActionListItem(
          actionItem: ActionItemModel(
            text: 'e-Factura',
            icon: Icons.blinds_closed_sharp,
            onTap: () => {},
          ),
        ),
        HomeActionListItem(
          actionItem: ActionItemModel(
            text: 'Club Familia',
            icon: Icons.groups_2_outlined,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
