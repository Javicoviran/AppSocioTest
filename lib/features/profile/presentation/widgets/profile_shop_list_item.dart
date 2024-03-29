import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/utils.dart';
import 'package:app_socio_test/features/profile/presentation/models/profile_shop_list_item_model.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_shop_info.dart';
import 'package:app_socio_test/presentation/widgets/loading_shimmer.dart';
import 'package:flutter/material.dart';

class ProfileShopListItem extends StatelessWidget {
  final ProfileShopListItemModel shop;

  const ProfileShopListItem({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          fadeTransitionRoute(const BaseShopInfo()),
        );
      },
      child: Container(
        height: hJM(24.5),
        padding: EdgeInsets.all(wJM(3)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: CommonTheme.primaryColor),
          color: CommonTheme.green50,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: wJM(33),
                  height: hJM(11),
                  child: ClipRRect(
                    borderRadius: CommonTheme.defaultImageRadius,
                    child: Image.network(
                      shop.imageUrl,
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
                Icon(Icons.open_in_new_rounded, size: hJM(3.5), color: CommonTheme.green800),
              ],
            ),
            SizedBox(
              width: wJM(47),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    shop.name,
                    style: CommonTheme.titleSmall,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    shop.address,
                    style: CommonTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    shop.phoneNumber,
                    style: CommonTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
