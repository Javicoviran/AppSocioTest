import 'package:app_socio_test/presentation/helpers/constants.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/loading_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String userImage;
  final double size;

  const ProfileAvatar({
    super.key,
    required this.userImage,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: CommonTheme.backgroundColor),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: userImage,
          fit: BoxFit.cover,
          placeholder: (_, __) => LoadingShimmer(
            width: size,
            height: size,
            shape: RoundedRectangleBorder(borderRadius: CommonTheme.defaultImageRadius),
          ),
          errorWidget: (_, __, ___) => Image.asset(
            noImagePlaceHolder,
            alignment: Alignment.center,
            height: size,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
