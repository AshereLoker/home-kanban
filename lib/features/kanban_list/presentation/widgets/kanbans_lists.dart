import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_list.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_item.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class KanbanLists extends StatelessWidget {
  final ValueNotifier<String?> timerStartWithKanban =
      ValueNotifier<String?>(null);
  late List<DragAndDropList> kanbanViewLists;
  final IList<Kanban> kanbans;

  KanbanLists({
    super.key,
    required this.kanbans,
  });

  @override
  Widget build(BuildContext context) {
    kanbanViewLists = List.generate(
      KanbanStatus.values.length,
      (index) => KanbanListWithStatus(
        listStatus: KanbanStatus.values[index],
        title: KanbanStatus.values[index].name,
        children: _kanbanItemsList(
          context,
          _kanbanListWithStatus(KanbanStatus.values[index]),
        ),
      ),
    );

    return Expanded(
      child: DragAndDropLists(
        children: kanbanViewLists,
        onItemReorder: (
          int oldItemIndex,
          int oldListIndex,
          int newItemIndex,
          int newListIndex,
        ) =>
            _onItemReorder(
          oldItemIndex,
          oldListIndex,
          newItemIndex,
          newListIndex,
          context,
        ),
        onListReorder: _onListReorderEmpty,
        axis: Axis.horizontal,
        lastItemTargetHeight: 50,
        listWidth: 75.w,
        listDraggingWidth: 150,
        listPadding: const EdgeInsets.all(8),
        listDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }

  List<DragAndDropItem> _kanbanItemsList(
    BuildContext context,
    IList<Kanban> kanbans,
  ) {
    final itemsList = <DragAndDropItem>[];

    for (final kanban in kanbans) {
      itemsList.add(
        KanbanItem(context, kanban),
      );
    }

    return itemsList;
  }

  IList<Kanban> _kanbanListWithStatus(KanbanStatus status) {
    final allKanbans = kanbans.unlock;

    return allKanbans.where((obj) => obj.status == status).toIList();
  }

  void _onItemReorder(
    int oldItemIndex,
    int oldListIndex,
    int newItemIndex,
    int newListIndex,
    BuildContext context,
  ) {
    final kanban =
        (kanbanViewLists[oldListIndex].children[oldItemIndex] as KanbanItem)
            .kanban;
    final newStatus =
        (kanbanViewLists[newListIndex] as KanbanListWithStatus).listStatus;

    context.read<KanbansBloc>().add(
          KanbansEvent.updateKanban(
            params: UpdateKanbanParams(
              modelToUpdate:
                  kanban.copyWith(order: newItemIndex, status: newStatus),
            ),
          ),
        );
  }

  // ignore: no-empty-block
  void _onListReorderEmpty(int oldList, int newList) {}
}
