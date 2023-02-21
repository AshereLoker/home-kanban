import 'package:drag_and_drop_lists/drag_and_drop_item.dart';
import 'package:drag_and_drop_lists/drag_and_drop_list.dart';
import 'package:flutter/material.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/kanban_app_svg_images.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_create_button.dart';

class KanbanListWithStatus extends DragAndDropList {
  final KanbanStatus listStatus;
  final String title;

  KanbanListWithStatus({
    required List<DragAndDropItem> children,
    required this.listStatus,
    required this.title,
  }) : super(
          children: children,
          header: _KanbanListHeader(
            title: title,
            kanbansCount: children.length,
          ),
          contentsWhenEmpty: const SizedBox(),
          canDrag: false,
          footer: _KanbanListFooter(
            listStatus,
            children.length,
          ),
        );
}

class _KanbanListHeader extends StatelessWidget {
  final String title;
  final int kanbansCount;

  const _KanbanListHeader({
    required this.title,
    required this.kanbansCount,
  });

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: AppSize.commonRadiusWidget,
            topRight: AppSize.commonRadiusWidget,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSize.commonVerticalPadding,
            horizontal: AppSize.commonHorizontalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppSize.sizedBoxH4,
              Text(
                title,
                style: textTitleText24Bold.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              AppSize.sizedBoxH8,
              Row(
                children: [
                  KanbanAppSvgAssetPicture(
                    assetName: KanbanAssets.ASSETS_SVG_IC_TASKS_SVG,
                    size: 18,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  AppSize.sizedBoxW8,
                  Text('- $kanbansCount', style: textSubtitleText20Light),
                  AppSize.sizedBoxW24,
                  KanbanAppSvgAssetPicture(
                    assetName: KanbanAssets.ASSETS_SVG_IC_EXPIRED_TASKS_SVG,
                    size: 20,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  AppSize.sizedBoxW8,
                  const Text('- 0', style: textSubtitleText20Light),
                ],
              ),
            ],
          ),
        ),
      );

  static const String _baseFont = 'Grotte';

  static const textTitleText24Bold = TextStyle(
    fontFamily: _baseFont,
    fontSize: 24,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );
  static const textSubtitleText20Light = TextStyle(
    fontFamily: _baseFont,
    fontSize: 20,
    height: 1.25,
    fontWeight: FontWeight.w300,
  );
}

class _KanbanListFooter extends StatelessWidget {
  final KanbanStatus listStatus;
  final int order;

  const _KanbanListFooter(this.listStatus, this.order);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppSize.commonHorizontalPadding / 2,
          ),
          child: KanbanCreateButton(
            key: UniqueKey(),
            status: listStatus,
            order: order,
          ),
        ),
      );
}
