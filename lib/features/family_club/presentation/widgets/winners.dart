import 'package:app_socio_test/features/family_club/presentation/helpers/constant.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_data_table.dart';
import 'package:flutter/material.dart';

class Winners extends StatelessWidget {
  const Winners({super.key});

  @override
  Widget build(BuildContext context) {
    final rows = data.map((winner) {
      return DataRow(
        cells: <DataCell>[
          DataCell(Center(child: Text(formatDate(winner.date)))),
          DataCell(Center(child: Text(winner.prize))),
          DataCell(Center(child: Text(winner.cardNumber))),
        ],
      );
    }).toList();
    final columns = winnersColumns.map((title) {
      return DataColumn(
        label: Center(
          child: Text(
            title,
            style: CommonTheme.bodyLarge.copyWith(
              color: CommonTheme.backgroundColor,
            ),
          ),
        ),
      );
    }).toList();
    return Column(
      children: [
        const _InitialText(),
        BaseDatatable(listData: rows, columnTitles: columns, controller: ScrollController()),
      ],
    );
  }
}

class _InitialText extends StatelessWidget {
  const _InitialText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(wJM(5)),
      child: Text(
        "Consulte la lista de premios obtenidos a través de club familia",
        style: CommonTheme.bodyLarge.copyWith(
          color: AppColors.grey500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}