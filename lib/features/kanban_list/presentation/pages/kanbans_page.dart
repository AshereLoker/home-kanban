import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/core/ui/widgets/kanban_app_scaffold.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_create_button.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanbans_lists.dart';

class KanbansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => KanbanAppScaffold(
        body: buildBody(context),
        backgroundColor: Theme.of(context).colorScheme.surface,
      );

  Widget buildBody(BuildContext context) => Column(
        children: [
          BlocBuilder<KanbansBloc, KanbansState>(
            builder: (context, state) => state.when(
              empty: () => const Center(child: KanbanCreateButton(order: 0)),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (kanbans) => KanbanLists(
                kanbans: kanbans,
              ),
              error: (error) => Text(error),
            ),
          ),
        ],
      );
}
