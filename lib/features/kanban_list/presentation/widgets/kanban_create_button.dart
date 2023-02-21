import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/ui/widgets/kanban_app_svg_images.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';

class KanbanCreateButton extends StatefulWidget {
  final int order;
  final KanbanStatus? status;
  const KanbanCreateButton({
    super.key,
    required this.order,
    this.status,
  });

  @override
  State<KanbanCreateButton> createState() => _KanbanCreateButtonState();
}

class _KanbanCreateButtonState extends State<KanbanCreateButton> {
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
                    '+ ADD CARD',
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
  Widget build(BuildContext context) => Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            flex: 3,
            child: TextField(
              onChanged: (value) => kanbanName.value = value,
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () => _createKanban(context),
              icon: KanbanAppSvgAssetPicture(
                assetName: KanbanAssets.ASSETS_SVG_IC_CHECK_SVG,
                size: 18,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () => _clearContent(),
              icon: KanbanAppSvgAssetPicture(
                assetName: KanbanAssets.ASSETS_SVG_IC_CLOSE_SVG,
                size: 16,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ],
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
          ),
        ));
    _clearContent();
  }
}
