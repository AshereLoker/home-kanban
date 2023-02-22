// ignore_for_file: void_checks

import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/timer/domain/usecases/timer_usecases.dart';
import 'package:mockito/mockito.dart';
import '../repository/mock/mock_timer_repository.mocks.dart';

void main() {
  late final PauseTimer usecase;
  late final MockTimerRepository mockTimerRepository;

  setUp(() {
    mockTimerRepository = MockTimerRepository();
    usecase = PauseTimer(mockTimerRepository);
  });

  test(
    'should pause timer in repository',
    () async {
      // arrange.
      when(mockTimerRepository.pauseTimer()).thenAnswer(
        (_) async => const Right(returnsNormally),
      );
      // act.
      final result = await usecase(NoParams());
      // assert.
      expect(result, const Right<Failure, void>(returnsNormally));
      verify(mockTimerRepository.pauseTimer());
      verifyNoMoreInteractions(mockTimerRepository);
    },
  );
}
