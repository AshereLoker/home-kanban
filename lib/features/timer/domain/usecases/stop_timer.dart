import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/timer/domain/repositories/timer_repository.dart';

class StopTimer extends UseCase<void, NoParams> {
  final TimerRepository repository;

  StopTimer(this.repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) => repository.stopTimer();
}
