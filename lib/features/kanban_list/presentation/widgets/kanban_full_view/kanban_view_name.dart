import 'package:flutter/material.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/shrink_text_field.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_full_view/kanban_view_row_with_icon.dart';

class KanbanViewName extends StatelessWidget {
  final Kanban kanban;
  final TextEditingController nameController;
  final void Function(BuildContext context) onChange;

  const KanbanViewName({
    required this.kanban,
    required this.nameController,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.commonHorizontalPadding,
          vertical: AppSize.commonHorizontalPadding,
        ),
        child: KanbanViewRowWithIcon(
          iconPath: KanbanAssets.ASSETS_SVG_IC_EDIT_SVG,
          child: Expanded(
            child: ShrinkTextField(
              controller: nameController,
              onChange: (_) => onChange(context),
              hintText: 'Set kanban name...',
            ),
          ),
        ),
      );
}
