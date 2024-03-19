import 'package:app_socio_test/features/article/presentation/models/article_bar_code_model.dart';

class ArticleModel {
  final String imageUrl;
  final String name;
  final String code;
  final String price;
  final String minOrder;
  final String available;
  final String taxCategory;
  final String aeocCategory;
  final List<ArticleBarCodeModel> barCodes;

  ArticleModel({
    required this.imageUrl,
    required this.name,
    required this.code,
    required this.price,
    required this.minOrder,
    required this.available,
    required this.taxCategory,
    required this.aeocCategory,
    required this.barCodes,
  });
}
