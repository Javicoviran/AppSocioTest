import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/helpers/constants.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/loading_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String userImage;

  const ProfileAvatar({
    super.key,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wJM(17) * 2,
      height: wJM(17) * 2,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: CommonTheme.backgroundColor),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: userImage,
          fit: BoxFit.cover,
          placeholder: (_, __) => LoadingShimmer(
            width: wJM(17) * 2,
            height: wJM(17) * 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          errorWidget: (_, __, ___) => Image.asset(
            noImagePlaceHolder,
            alignment: Alignment.center,
            height: wJM(17) * 2,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
