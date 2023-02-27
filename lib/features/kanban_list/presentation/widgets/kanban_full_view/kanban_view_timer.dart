import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_challenge_kanban/core/assets/kanban_assets.g.dart';
import 'package:home_challenge_kanban/core/constants/app_sizes.dart';
import 'package:home_challenge_kanban/core/utils/time_milliseconds_converter.dart';
import 'package:home_challenge_kanban/core/utils/ui_time_converter.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/presentation/widgets/kanban_full_view/kanban_view_row_with_icon.dart';
import 'package:home_challenge_kanban/features/timer/presentation/bloc/timer_bloc.dart';
import 'package:home_challenge_kanban/features/timer/presentation/widgets/timer_play_stop_button.dart';
import 'package:rxdart/rxdart.dart';

class KanbanViewTimer extends StatelessWidget {
  final Kanban kanban;
  const KanbanViewTimer({required this.kanban});

  @override
  Widget build(BuildContext context) => BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) => state.when(
          notStarted: () => _buildTimer(context),
          paused: (stream, activeKey) =>
              _buildTimer(context, stream, activeKey),
          isGoing: (stream, activeKey) =>
              _buildTimer(context, stream, activeKey),
        ),
      );

  Widget _buildTimer(
    BuildContext context, [
    ValueStream<int>? dataStream,
    String? activeKey,
  ]) =>
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.commonHorizontalPadding,
          vertical: AppSize.commonHorizontalPadding,
        ),
        child: KanbanViewRowWithIcon(
          iconPath: KanbanAssets.ASSETS_SVG_IC_TIMER_SVG,
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (dataStream != null) ...[
                  StreamBuilder(
                    stream: dataStream,
                    initialData: kanban.spendedTimeSeconds,
                    builder: (context, streamSnap) => Text(
                      UiTimeConverter.getDisplayTime(streamSnap.data!),
                      style: textSubtitleText16Regular,
                    ),
                  ),
                ] else
                  Text(
                    UiTimeConverter.getDisplayTime(
                      TimeMillisecondsConverter.getMilliseconsFromSeconds(
                        kanban.spendedTimeSeconds,
                      ),
                    ),
                  ),
                AppSize.sizedBoxH4,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TimerPlayButton(
                      widgetKey: kanban.key,
                      buttonSize: 24,
                      innerButtonPadding: 8,
                      iconSize: 32,
                      buttonMode: PlayButtonMode.pause,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  static const String _baseFont = 'Grotte';

  static const textSubtitleText16Regular = TextStyle(
    fontFamily: _baseFont,
    fontSize: 28,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );
}
