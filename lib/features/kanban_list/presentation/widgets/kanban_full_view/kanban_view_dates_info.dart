import 'package:flutter/material.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/shrink_text_field.dart';
import 'package:home_challenge_kanban/core/ui/widgets/svg_asset_picture.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

class KanbanViewDatesInfo extends StatelessWidget {
  final Kanban kanban;

  const KanbanViewDatesInfo({
    required this.kanban,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.commonHorizontalPadding,
          vertical: AppSize.commonHorizontalPadding,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          children: [
            SvgAssetPicture(
              assetName: KanbanAssets.ASSETS_SVG_IC_CLOCK_SVG,
              size: 24,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            AppSize.sizedBoxW24,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ShrinkTextField(
                    onChange: (change) {},
                    hintText: 'Due date...',
                  ),
                  const Divider(),
                  ShrinkTextField(
                    onChange: (change) {},
                    hintText: 'Start at...',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
