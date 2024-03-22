import 'package:app_socio_test/features/home/presentation/models/shop_card_model.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/widgets/base_shop_info.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:app_socio_test/presentation/widgets/loading_shimmer.dart';
import 'package:flutter/material.dart';

class ShopsList extends StatelessWidget {
  final ShopCardModel shopCardModel;
  // final ShopInfoModel shopInfo;

  const ShopsList({
    super.key,
    required this.shopCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mis tiendas', style: CommonTheme.headlineSmall),
        SizedBox(height: hJM(2)),
        // TODO: será un listview builder
        _ShopListItem(shopCardModel: shopCardModel),
      ],
    );
  }
}

class _ShopListItem extends StatelessWidget {
  const _ShopListItem({
    required this.shopCardModel,
  });

  final ShopCardModel shopCardModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      clipBehavior: Clip.none,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: CommonTheme.defaultImageRadius),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(wJM(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shopCardModel.name,
                  style: CommonTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: hJM(1)),
                Text(
                  shopCardModel.accountNumber,
                  style: CommonTheme.bodySmall.copyWith(color: CommonTheme.secondaryTextColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: hJM(1.5)),
                SizedBox(
                  height: hJM(20),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: CommonTheme.defaultImageRadius,
                    child: Image.network(
                      shopCardModel.imageUrl,
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return LoadingShimmer(
                            width: double.infinity,
                            height: hJM(24),
                            shape: const RoundedRectangleBorder(),
                          );
                        }
                      },
                      errorBuilder: (BuildContext context, Object exception, StackTrace? stacktrace) {
                        return LoadingShimmer(
                          width: double.infinity,
                          height: hJM(24),
                          shape: const RoundedRectangleBorder(),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: hJM(1.5)),
                Text(
                  shopCardModel.address,
                  style: CommonTheme.bodyMediumStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: hJM(1)),
                Text(
                  shopCardModel.phoneNumber,
                  style: CommonTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: hJM(3)),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BaseButton(
                      text: 'Modificar',
                      backgroundColor: CommonTheme.green800,
                      width: wJM(36),
                    ),
                    SizedBox(width: wJM(2)),
                    BaseButton(
                      width: wJM(36),
                      text: 'Información',
                      buttonTextColor: CommonTheme.green800,
                      backgroundColor: CommonTheme.backgroundColor,
                      borderStyle: CommonTheme.green800,
                      onClick: () => Navigator.push(
                        context,
                        fadeTransitionRoute(const BaseShopInfo(/*shopInfo*/)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
