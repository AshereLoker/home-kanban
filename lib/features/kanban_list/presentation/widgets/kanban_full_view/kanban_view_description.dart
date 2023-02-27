import 'package:flutter/material.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/shrink_text_field.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_full_view/kanban_view_row_with_icon.dart';
import 'package:sizer/sizer.dart';

class KanbanViewDescription extends StatelessWidget {
  final Kanban kanban;
  final TextEditingController descriptionController;
  final void Function(BuildContext context) onChange;

  const KanbanViewDescription({
    required this.kanban,
    required this.descriptionController,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.commonHorizontalPadding,
          vertical: AppSize.commonHorizontalPadding,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 15.w,
          ),
          child: KanbanViewRowWithIcon(
            iconPath: KanbanAssets.ASSETS_SVG_IC_DESCRIPTION_SVG,
            child: Expanded(
              child: ShrinkTextField(
                controller: descriptionController,
                onChange: (change) => onChange(context),
                hintText: "Add you're description...",
              ),
            ),
          ),
        ),
      );
}
