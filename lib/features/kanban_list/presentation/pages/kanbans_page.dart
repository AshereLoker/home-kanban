import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_quick_create_button.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanbans_lists.dart';

class KanbansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          BlocBuilder<KanbansBloc, KanbansState>(
            builder: (context, state) => state.when(
              empty: () => KanbanLists(kanbans: const IListConst([])),
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
