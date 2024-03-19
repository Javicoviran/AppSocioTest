import 'package:app_socio_test/features/article/presentation/models/article_bar_code_model.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class ArticleBarCodesTabs extends StatefulWidget {
  final List<ArticleBarCodeModel> barcodes;

  const ArticleBarCodesTabs({
    super.key,
    required this.barcodes,
  });

  @override
  State<StatefulWidget> createState() => ArticleBarCodesTabsState();
}

class ArticleBarCodesTabsState extends State<ArticleBarCodesTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.barcodes.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: List.generate(
            widget.barcodes.length,
            (index) => Tab(text: widget.barcodes.elementAt(index).type),
          ),
        ),
        SizedBox(height: hJM(2)),
        Center(
          child: SizedBox(
            height: hJM(12.5),
            child: TabBarView(
              controller: _tabController,
              children: List.generate(
                widget.barcodes.length,
                (index) => BarcodeWidget(
                  data: widget.barcodes.elementAt(index).code,
                  barcode: Barcode.code128(),
                  // width: wJM(80),
                  style: CommonTheme.ticketTextStyle.copyWith(letterSpacing: 8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
