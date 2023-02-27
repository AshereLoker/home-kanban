import 'package:flutter/material.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/svg_asset_picture.dart';

class KanbanViewRowWithIcon extends StatelessWidget {
  final Widget child;
  final String iconPath;

  const KanbanViewRowWithIcon({
    required this.child,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: [
          SvgAssetPicture(
            assetName: iconPath,
            size: 24,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          AppSize.sizedBoxW24,
          child,
        ],
      );
}