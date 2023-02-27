import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/ui/widgets/circle_button_with_shadow.dart';
import 'package:home_challenge_kanban/core/ui/widgets/svg_asset_picture.dart';
import 'package:home_challenge_kanban/features/timer/presentation/bloc/timer_bloc.dart';

enum PlayButtonMode { pause, stop }

class TimerPlayButton extends StatelessWidget {
  final String widgetKey;
  final void Function(BuildContext)? onStart;
  final void Function(BuildContext)? onStopPause;
  final double buttonSize;
  final double iconSize;
  final double innerButtonPadding;
  final PlayButtonMode buttonMode;

  const TimerPlayButton({
    super.key,
    required this.widgetKey,
    required this.buttonSize,
    required this.iconSize,
    required this.innerButtonPadding,
    required this.buttonMode,
    this.onStart,
    this.onStopPause,
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
                  _iconPath(buttonMode),
                  activeWidget,
                  _onStop,
                )
              : _buildButton(
                  context,
                  KanbanAssets.ASSETS_SVG_IC_PLAY_SVG,
                  activeWidget,
                  (context) {},
                ),
          paused: (_, activeWidget) => widgetKey == activeWidget
              ? _buildButton(
                  context,
                  KanbanAssets.ASSETS_SVG_IC_PLAY_SVG,
                  activeWidget,
                  _onStart,
                )
              : _buildButton(
                  context,
                  _iconPath(buttonMode),
                  activeWidget,
                  _onStop,
                ),
        ),
      );

  Widget _buildButton(
    BuildContext context,
    String iconPath,
    String? activeWidget,
    void Function(BuildContext) onTap,
  ) =>
      AbsorbPointer(
        key: UniqueKey(),
        absorbing: activeWidget != null && activeWidget != widgetKey,
        child: CircleButtonWithShadow(
          buttonRadius: buttonSize,
          innerPadding: innerButtonPadding,
          onTap: (context) => onTap(context),
          buttonColor: activeWidget == null || activeWidget == widgetKey
              ? Colors.red
              : Colors.white60,
          child: SvgAssetPicture(
            assetName: iconPath,
            size: iconSize,
            color: Theme.of(context).colorScheme.onSurface,
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
    context.read<TimerBloc>().add(_eventFromButtonState(buttonMode));
    onStopPause?.call(context);
  }

  String _iconPath(PlayButtonMode mode) {
    switch (mode) {
      case PlayButtonMode.pause:
        return KanbanAssets.ASSETS_SVG_IC_PAUSE_SVG;

      case PlayButtonMode.stop:
        return KanbanAssets.ASSETS_SVG_IC_STOP_SVG;
    }
  }

  TimerEvent _eventFromButtonState(PlayButtonMode mode) {
    switch (mode) {
      case PlayButtonMode.pause:
        return const TimerEvent.pauseTimer();

      case PlayButtonMode.stop:
        return const TimerEvent.stopTimer();
    }
  }
}
