import 'package:home_challenge_kanban/features/timer/domain/usecases/timer_usecases.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<PauseTimer>(),
  MockSpec<StartTimer>(),
  MockSpec<StopTimer>(),
])
// Ignore this class. Only need to right work mockito annotation.
// ignore: unused_element
class _Empty {}
