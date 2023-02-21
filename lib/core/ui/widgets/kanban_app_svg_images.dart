import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KanbanAppSvgAssetPicture extends StatelessWidget {
  final String assetName;
  final Color? color;
  final double? size;

  const KanbanAppSvgAssetPicture({
    super.key,
    required this.assetName,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
        assetName,
        height: size,
        width: size,
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      );
}
