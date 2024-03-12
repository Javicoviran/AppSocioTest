import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmer extends StatelessWidget {
  final double height;
  final double width;
  final ShapeBorder? shape;

  const LoadingShimmer({
    super.key,
    required this.width,
    required this.height,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          shape: shape ?? const StadiumBorder(),
          color: Colors.grey[400],
        ),
      ),
    );
  }
}