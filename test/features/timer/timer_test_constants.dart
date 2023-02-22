import 'package:home_challenge_kanban/features/timer/domain/usecases/start_timer.dart';
import 'package:rxdart/rxdart.dart';

import 'package:rxdart/streams.dart';

const tStartTimerParams = StartTimerParams(startTimeSeconds: 0);
final tTimeStream = BehaviorSubject<int>.seeded(0);
