import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/timer/domain/repositories/timer_repository.dart';

class PauseTimer extends UseCase<void, NoParams> {
  final TimerRepository repository;

  PauseTimer(this.repository);
  @override
  Future<Either<Failure, void>> call(NoParams params) =>
      repository.pauseTimer();
}
