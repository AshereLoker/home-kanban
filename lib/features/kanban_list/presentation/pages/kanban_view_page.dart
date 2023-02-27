import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_full_view/kanban_view_dates_info.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_full_view/kanban_view_description.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_full_view/kanban_view_name.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_full_view/kanban_view_timer.dart';

enum KanbanViewMode { edit, view, create }

class KanbanViewPage extends StatefulWidget {
  final Kanban kanban;
  final KanbanViewMode mode;

  const KanbanViewPage(this.kanban, this.mode);

  @override
  State<KanbanViewPage> createState() => _KanbanViewPageState();
}

class _KanbanViewPageState extends State<KanbanViewPage> {
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController.fromValue(
      TextEditingValue(text: widget.kanban.name),
    );
    _descriptionController = TextEditingController.fromValue(
      TextEditingValue(text: widget.kanban.description ?? ''),
    );
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.commonVerticalPadding,
          horizontal: AppSize.commonVerticalPadding,
        ),
        child: AbsorbPointer(
          absorbing: widget.mode == KanbanViewMode.view,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppSize.sizedBoxH24,
              _cardBase(
                context,
                KanbanViewName(
                  kanban: widget.kanban,
                  nameController: _nameController,
                  onChange: _changeName,
                ),
              ),
              AppSize.sizedBoxH8,
              _cardBase(
                context,
                KanbanViewDescription(
                  kanban: widget.kanban,
                  descriptionController: _descriptionController,
                  onChange: _changeDescription,
                ),
              ),
              AppSize.sizedBoxH8,
              _cardBase(
                context,
                KanbanViewDatesInfo(
                  kanban: widget.kanban,
                ),
              ),
              if (widget.mode == KanbanViewMode.edit) ...[
                AppSize.sizedBoxH8,
                _cardBase(
                  context,
                  KanbanViewTimer(kanban: widget.kanban),
                ),
              ],
            ],
          ),
        ),
      );

  void _changeDescription(BuildContext context) =>
      context.read<KanbansBloc>().add(
            KanbansEvent.updateKanban(
              params: UpdateKanbanParams(
                modelToUpdate: widget.kanban.copyWith(
                  description: _descriptionController.text,
                ),
              ),
            ),
          );

  void _changeName(BuildContext context) => context.read<KanbansBloc>().add(
        KanbansEvent.updateKanban(
          params: UpdateKanbanParams(
            modelToUpdate: widget.kanban.copyWith(name: _nameController.text),
          ),
        ),
      );

  DecoratedBox _cardBase(BuildContext context, Widget child) => DecoratedBox(
        decoration: _cardDecoration(context),
        child: child,
      );

  BoxDecoration _cardDecoration(BuildContext context) => BoxDecoration(
        borderRadius: const BorderRadius.all(AppSize.bottomBarRadiusWidget),
        color: Theme.of(context).colorScheme.background,
      );
}
