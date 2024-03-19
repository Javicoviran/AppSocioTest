import 'package:app_socio_test/features/article/presentation/models/article_bar_code_model.dart';
import 'package:app_socio_test/features/article/presentation/models/article_model.dart';
import 'package:app_socio_test/presentation/helpers/constants.dart';

final testAquarius = ArticleModel(
  imageUrl: articleTestImage,
  name: 'BEBIDA ISOTÓNICA ZERO NAR AQUARIUS 1,5 L',
  code: '11103',
  price: '1.265 €/Ud.',
  minOrder: '1 Caja, 6 Ud.',
  available: 'Plataforma',
  taxCategory: '21 APLICA RECARGO',
  aeocCategory: '0104021001',
  barCodes: testAquariusBarCodeList,
);

final List<ArticleBarCodeModel> testAquariusBarCodeList = [
  ArticleBarCodeModel(type: 'EAN13', code: '5449000171795', amount: '1', format: 'Ud'),
  ArticleBarCodeModel(type: 'EAN13', code: '5449000172365', amount: '1', format: 'caj'),
  ArticleBarCodeModel(type: 'DUN14', code: '05449000172365', amount: '6', format: 'caj'),
];
