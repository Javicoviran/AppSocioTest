import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:flutter/material.dart';

class BaseDatatable extends StatelessWidget {
  final List<DataRow> listData;
  final List<DataColumn> columnTitles;
  final ScrollController controller;

  const BaseDatatable({
    super.key,
    required this.listData,
    required this.columnTitles,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      controller: controller,
      child: SingleChildScrollView(
        controller: controller,
        padding: EdgeInsets.only(bottom: wJM(1.25)),
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return AppColors.green500;
            },
          ),
          border: const TableBorder(
            bottom: BorderSide(color: AppColors.green500),
            top: BorderSide(color: AppColors.green500),
            left: BorderSide(color: AppColors.green500),
            right: BorderSide(color: AppColors.green500),
            horizontalInside: BorderSide(color: AppColors.green500),
            verticalInside: BorderSide(color: AppColors.green500),
          ),
          dataTextStyle: CommonTheme.bodyMedium.copyWith(fontWeight: FontWeight.bold),
          columns: columnTitles,
          rows: listData,
        ),
      ),
    );
  }
}
