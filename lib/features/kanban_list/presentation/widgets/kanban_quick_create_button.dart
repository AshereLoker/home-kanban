import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/svg_asset_picture.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';

class KanbanQuickCreateButton extends StatefulWidget {
  final int order;
  final KanbanStatus? status;
  const KanbanQuickCreateButton({
    super.key,
    required this.order,
    this.status,
  });

  @override
  State<KanbanQuickCreateButton> createState() =>
      _KanbanQuickCreateButtonState();
}

class _KanbanQuickCreateButtonState extends State<KanbanQuickCreateButton> {
  final ValueNotifier<bool> showTextField = ValueNotifier(false);
  final ValueNotifier<String> kanbanName = ValueNotifier('');

  @override
  void dispose() {
    showTextField.dispose();
    kanbanName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: showTextField,
        builder: (context, showField, child) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) =>
              SizeTransition(sizeFactor: animation, child: child),
          child: showField
              ? _KanbanCreateTextField(
                  key: UniqueKey(),
                  kanbanName: kanbanName,
                  showTextField: showTextField,
                  status: widget.status,
                  order: widget.order,
                )
              : TextButton(
                  style: const ButtonStyle(),
                  onPressed: () => showTextField.value = true,
                  child: Text(
                    '+ QUICK ADD',
                    style: textButtonText16Bold.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
        ),
      );

  static const String _baseFont = 'Grotte';

  static const textButtonText16Bold = TextStyle(
    fontFamily: _baseFont,
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );
}

class _KanbanCreateTextField extends StatelessWidget {
  final KanbanStatus? status;
  final int order;
  const _KanbanCreateTextField({
    super.key,
    required this.kanbanName,
    required this.showTextField,
    required this.order,
    this.status,
  });

  final ValueNotifier<String> kanbanName;
  final ValueNotifier<bool> showTextField;

  @override
  Widget build(BuildContext context) => Container(
        constraints: _cardConstarint(),
        decoration: _cardDecoration(context),
        padding: _cardPaddings(),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: (change) => kanbanName.value = change,
                scrollPadding: EdgeInsets.zero,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration.collapsed(
                  border: InputBorder.none,
                  hintText: 'Write name...',
                ),
                maxLines: null,
              ),
            ),
            IconButton(
              onPressed: () => _createKanban(context),
              icon: SvgAssetPicture(
                assetName: KanbanAssets.ASSETS_SVG_IC_CHECK_SVG,
                size: 18,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            IconButton(
              onPressed: () => _clearContent(),
              icon: SvgAssetPicture(
                assetName: KanbanAssets.ASSETS_SVG_IC_CLOSE_SVG,
                size: 16,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      );

  BoxConstraints _cardConstarint() => const BoxConstraints(
        minHeight: AppSize.cardMinimumHeight,
        minWidth: double.infinity,
      );

  BoxDecoration _cardDecoration(BuildContext context) => BoxDecoration(
        borderRadius: const BorderRadius.all(AppSize.bottomBarRadiusWidget),
        color: Theme.of(context).colorScheme.background,
      );

  EdgeInsets _cardPaddings() => const EdgeInsets.symmetric(
        horizontal: AppSize.commonHorizontalPadding / 2,
      );

  EdgeInsets _cardMargin() => const EdgeInsets.all(
        AppSize.commonVerticalPadding,
      );

  void _clearContent() {
    showTextField.value = false;
    kanbanName.value = '';
  }

  void _createKanban(BuildContext context) {
    context.read<KanbansBloc>().add(KanbansEvent.createKanban(
          createParams: CreateKanbanParams(
            status: status ?? KanbanStatus.todo,
            name: kanbanName.value,
            order: order,
            spendedTimeSeconds: 0,
          ),
        ));
    _clearContent();
  }
}
