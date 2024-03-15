import 'package:app_socio_test/presentation/helpers/constants.dart';
import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/presentation/widgets/base_shop_info.dart';
import 'package:app_socio_test/presentation/styles/colors.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_button.dart';
import 'package:app_socio_test/presentation/widgets/loading_shimmer.dart';
import 'package:flutter/material.dart';

class ShopsList extends StatelessWidget {
  // final ProfileShopCardModel shopCardModel;
  // final ProfileShopInfoModel shopInfo;

  const ShopsList({super.key} /*{required this.shopCardModel}*/);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mis tiendas', style: CommonTheme.headlineSmall),
        SizedBox(height: hJM(2)),
        Card(
          elevation: 5.0,
          clipBehavior: Clip.none,
          margin: EdgeInsets.zero,
          surfaceTintColor: AppColors.green50,
          shape: RoundedRectangleBorder(borderRadius: CommonTheme.defaultImageRadius),
          child: Column(
            children: [
              Padding(
                padding: CommonTheme.defaultBodyPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COVIRAN SUPERMERCADOS S.A.U. (CHANA) (383)',
                      style: CommonTheme.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: hJM(1)),
                    Text(
                      '383',
                      style: CommonTheme.bodySmall.copyWith(color: CommonTheme.secondaryTextColor),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: hJM(1.5)),
                    SizedBox(
                      height: hJM(20),
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                        child: Image.network(
                          defaultShopImage,
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
                      'CL VIRGEN DEL MONTE 0 18015 GRANADA Granada',
                      style: CommonTheme.bodyMediumStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: hJM(1)),
                    Text(
                      '958281160 - 661059930',
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
                          backgroundColor: AppColors.green800,
                          width: wJM(36),
                        ),
                        SizedBox(width: wJM(2)),
                        BaseButton(
                          width: wJM(36),
                          text: 'Información',
                          buttonTextColor: AppColors.green800,
                          backgroundColor: CommonTheme.backgroundColor,
                          borderStyle: AppColors.green800,
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
        ),
      ],
    );
  }
}
