import 'package:drag_and_drop_lists/drag_and_drop_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/kanban_app_svg_images.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_full_view.dart';
import 'package:home_challenge_kanban/features/timer/presentation/widgets/play_stop_button.dart';

class KanbanItem extends DragAndDropItem {
  final Kanban kanban;
  final BuildContext context;

  KanbanItem(
    this.context,
    this.kanban,
  ) : super(child: _KanbanCard(kanban: kanban));
}

class _KanbanCard extends StatefulWidget {
  final Kanban kanban;

  const _KanbanCard({
    required this.kanban,
  });

  @override
  State<_KanbanCard> createState() => _KanbanCardState();

  static const String _baseFont = 'Grotte';

  static const textTitleText20Bold = TextStyle(
    fontFamily: _baseFont,
    fontSize: 20,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );

  static const textTimeText16Bold = TextStyle(
    fontFamily: _baseFont,
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );

  static const textSubtitleText16Regular = TextStyle(
    fontFamily: _baseFont,
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );
}

class _KanbanCardState extends State<_KanbanCard> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          GestureDetector(
            onTap: () => showBottomSheet<void>(
              context: context,
              builder: (context) => KanbanFullView(widget.kanban),
            ),
            child: Container(
              constraints: _cardConstarint(),
              decoration: _cardDecoration(context),
              padding: _cardMargin(),
              margin: _cardPaddings(),
              child: _buildBody(context, widget.kanban),
            ),
          ),
          Positioned(
            bottom: 2,
            right: 4,
            child: TimerPlayStopButton(
              widgetKey: widget.kanban.key,
              buttonSize: 16,
              iconSize: 28,
            ),
          ),
        ],
      );

  Column _buildBody(BuildContext context, Kanban kanban) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppSize.commonHorizontalPadding / 4,
            ),
            child: _KanbanNameRow(
              textTitleText20Bold: _KanbanCard.textTitleText20Bold,
              kanban: kanban,
            ),
          ),
          if (kanban.description != null && kanban.description!.isNotEmpty) ...[
            AppSize.sizedBoxH4,
            Text(
              kanban.description!,
              style: _KanbanCard.textSubtitleText16Regular,
              maxLines: 3,
              overflow: TextOverflow.fade,
            ),
          ],
          AppSize.sizedBoxH8,
          if (kanban.dueDate == null) ...[
            Row(
              children: [
                const KanbanAppSvgAssetPicture(
                  assetName: KanbanAssets.ASSETS_SVG_IC_CLOCK_SVG,
                  size: 16,
                  color: Colors.white,
                ),
                AppSize.sizedBoxW8,
                Text(
                  '${kanban.dueDate}',
                  style: _KanbanCard.textTimeText16Bold,
                ),
              ],
            ),
          ] else
            const SizedBox(height: 20),
        ],
      );

  BoxConstraints _cardConstarint() => const BoxConstraints(
        minHeight: AppSize.cardMinimumHeight,
        minWidth: double.infinity,
      );

  BoxDecoration _cardDecoration(BuildContext context) => BoxDecoration(
        borderRadius: const BorderRadius.all(AppSize.commonRadiusWidget),
        color: Theme.of(context).colorScheme.background,
      );

  EdgeInsets _cardPaddings() => const EdgeInsets.only(
        left: AppSize.commonHorizontalPadding / 4,
        right: AppSize.commonHorizontalPadding / 4,
        top: AppSize.commonVerticalPadding,
      );

  EdgeInsets _cardMargin() => const EdgeInsets.all(
        AppSize.commonVerticalPadding,
      );
}

class _KanbanNameRow extends StatelessWidget {
  final Kanban kanban;
  const _KanbanNameRow({
    required this.kanban,
    required this.textTitleText20Bold,
  });

  final TextStyle textTitleText20Bold;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              kanban.name,
              style: textTitleText20Bold,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          PopupMenuButton<void>(
            icon: const KanbanAppSvgAssetPicture(
              assetName: KanbanAssets.ASSETS_SVG_IC_MORE_HORIZONTAL_SVG,
              size: 20,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              _buildMenuItem(context, _deleteKanban, 'DELETE'),
            ],
          ),
        ],
      );

  void _deleteKanban(BuildContext context) => context.read<KanbansBloc>().add(
        KanbansEvent.deleteKanban(key: kanban.key),
      );

  PopupMenuItem<void> _buildMenuItem(
    BuildContext context,
    void Function(BuildContext context) func,
    String name,
  ) =>
      PopupMenuItem<void>(
        child: Text(name),
        onTap: () => func(context),
      );
}
