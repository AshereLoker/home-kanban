import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/ui/widgets/kanban_app_svg_images.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/bloc/kanbans_bloc.dart';
import 'package:sizer/sizer.dart';

class KanbanFullView extends StatefulWidget {
  final Kanban kanban;

  const KanbanFullView(this.kanban);

  @override
  State<KanbanFullView> createState() => _KanbanFullViewState();
}

class _KanbanFullViewState extends State<KanbanFullView> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AppSize.sizedBoxH24,
            _cardBase(
              context,
              _KanbanName(
                kanban: widget.kanban,
                nameController: _nameController,
              ),
            ),
            AppSize.sizedBoxH8,
            _cardBase(
              context,
              _KanbanDescription(
                kanban: widget.kanban,
                textSubtitleText16Regular: textSubtitleText16Regular,
                descriptionController: _descriptionController,
              ),
            ),
            AppSize.sizedBoxH8,
            _cardBase(
              context,
              _KanbanTimesInfo(
                kanban: widget.kanban,
                textSubtitleText16Regular: textSubtitleText16Regular,
              ),
            ),
            AppSize.sizedBoxH8,
            _cardBase(
              context,
              _KanbanTimesInfo(
                kanban: widget.kanban,
                textSubtitleText16Regular: textSubtitleText16Regular,
              ),
            ),
          ],
        ),
      );

  DecoratedBox _cardBase(BuildContext context, Widget child) => DecoratedBox(
        decoration: _cardDecoration(context),
        child: child,
      );

  BoxDecoration _cardDecoration(BuildContext context) => BoxDecoration(
        borderRadius: const BorderRadius.all(AppSize.commonRadiusWidget),
        color: Theme.of(context).colorScheme.background,
      );

  static const String _baseFont = 'Grotte';

  static const textSubtitleText16Regular = TextStyle(
    fontFamily: _baseFont,
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );
}

class _KanbanDescription extends StatelessWidget {
  final Kanban kanban;

  const _KanbanDescription({
    required this.kanban,
    required this.textSubtitleText16Regular,
    required TextEditingController descriptionController,
  }) : _descriptionController = descriptionController;

  final TextStyle textSubtitleText16Regular;
  final TextEditingController _descriptionController;

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              KanbanAppSvgAssetPicture(
                assetName: KanbanAssets.ASSETS_SVG_IC_DESCRIPTION_SVG,
                size: 24,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              AppSize.sizedBoxW24,
              Expanded(
                child: TextField(
                  onChanged: (change) => _changeDescription(context),
                  scrollPadding: EdgeInsets.zero,
                  textAlignVertical: TextAlignVertical.top,
                  style: textSubtitleText16Regular,
                  controller: _descriptionController,
                  decoration: const InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: 'Add your description...',
                  ),
                  maxLines: null,
                ),
              ),
            ],
          ),
        ),
      );

  void _changeDescription(BuildContext context) =>
      context.read<KanbansBloc>().add(
            KanbansEvent.updateKanban(
              params: UpdateKanbanParams(
                modelToUpdate: kanban.copyWith(
                  description: _descriptionController.text,
                ),
              ),
            ),
          );
}

class _KanbanName extends StatelessWidget {
  final Kanban kanban;

  const _KanbanName({
    required this.kanban,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.commonVerticalPadding,
        ),
        child: TextField(
          onChanged: (change) => _changeName(context),
          controller: _nameController,
          decoration: const InputDecoration(border: InputBorder.none),
          maxLines: null,
        ),
      );

  void _changeName(BuildContext context) => context.read<KanbansBloc>().add(
        KanbansEvent.updateKanban(
          params: UpdateKanbanParams(
            modelToUpdate: kanban.copyWith(name: _nameController.text),
          ),
        ),
      );
}

class _KanbanTimesInfo extends StatelessWidget {
  final Kanban kanban;
  final TextStyle textSubtitleText16Regular;

  const _KanbanTimesInfo({
    required this.kanban,
    required this.textSubtitleText16Regular,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.commonHorizontalPadding,
          vertical: AppSize.commonHorizontalPadding,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          children: [
            KanbanAppSvgAssetPicture(
              assetName: KanbanAssets.ASSETS_SVG_IC_CLOCK_SVG,
              size: 24,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            AppSize.sizedBoxW24,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    scrollPadding: EdgeInsets.zero,
                    textAlignVertical: TextAlignVertical.top,
                    style: textSubtitleText16Regular,
                    decoration: const InputDecoration.collapsed(
                      border: InputBorder.none,
                      hintText: 'Start date...',
                    ),
                    maxLines: null,
                  ),
                  const Divider(),
                  TextField(
                    scrollPadding: EdgeInsets.zero,
                    textAlignVertical: TextAlignVertical.top,
                    style: textSubtitleText16Regular,
                    decoration: const InputDecoration.collapsed(
                      border: InputBorder.none,
                      hintText: 'Due date...',
                    ),
                    maxLines: null,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
