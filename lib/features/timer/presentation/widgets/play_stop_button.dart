import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/ui/widgets/kanban_app_svg_images.dart';
import 'package:home_challenge_kanban/features/timer/presentation/bloc/timer_bloc.dart';

class TimerPlayStopButton extends StatelessWidget {
  final String widgetKey;
  final void Function(BuildContext)? onStart;
  final void Function(BuildContext)? onStop;
  final double buttonSize;
  final double iconSize;

  const TimerPlayStopButton({
    super.key,
    required this.widgetKey,
    required this.buttonSize,
    required this.iconSize,
    this.onStart,
    this.onStop,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) => state.when(
          notStarted: () => _buildButton(
            context,
            KanbanAssets.ASSETS_SVG_IC_PLAY_SVG,
            null,
            _onStart,
          ),
          isGoing: (_, activeWidget) => widgetKey == activeWidget
              ? _buildButton(
                  context,
                  KanbanAssets.ASSETS_SVG_IC_STOP_SVG,
                  activeWidget,
                  _onStop,
                )
              : _buildButton(
                  context,
                  KanbanAssets.ASSETS_SVG_IC_PLAY_SVG,
                  activeWidget,
                  null,
                ),
          paused: (_, activeWidget) => _buildButton(
            context,
            KanbanAssets.ASSETS_SVG_IC_STOP_SVG,
            activeWidget,
            _onStop,
          ),
        ),
      );

  Widget _buildButton(
    BuildContext context,
    String iconPath,
    String? activeWidget,
    void Function(BuildContext)? onTap,
  ) =>
      AbsorbPointer(
        key: UniqueKey(),
        absorbing: activeWidget != null && activeWidget != widgetKey,
        child: ElevatedButton(
          onPressed: () => onTap?.call(context),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            elevation: 0,
            fixedSize: Size.fromRadius(buttonSize),
            backgroundColor: activeWidget == null || activeWidget == widgetKey
                ? Colors.red.shade600.withOpacity(0.5)
                : Colors.white.withOpacity(0.1),
          ),
          child: KanbanAppSvgAssetPicture(
            assetName: iconPath,
            color: Colors.white,
            size: iconSize,
          ),
        ),
      );

  void _onStart(BuildContext context) {
    context.read<TimerBloc>().add(
          TimerEvent.startTimer(
            widgetKey: widgetKey,
            startedTimeSeconds: 0,
          ),
        );
    onStart?.call(context);
  }

  void _onStop(BuildContext context) {
    context.read<TimerBloc>().add(const TimerEvent.stopTimer());
    onStop?.call(context);
  }
}
