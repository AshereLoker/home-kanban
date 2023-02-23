import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/timer/domain/usecases/timer_usecases.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import '../../test_timer_constants.dart';
import '../repository/mock/mock_timer_repository.mocks.dart';

void main() {
  late final StartTimer usecase;
  late final MockTimerRepository mockTimerRepository;

  setUp(() {
    mockTimerRepository = MockTimerRepository();
    usecase = StartTimer(mockTimerRepository);
  });

  test(
    'should start timer in repository',
    () async {
      // arrange.
      when(mockTimerRepository.startTimer(any)).thenAnswer(
        (_) async => Right(tTimeStream),
      );
      // act.
      final result = await usecase(tStartTimerParams);
      // assert.
      expect(result, Right<Failure, ValueStream<int>>(tTimeStream));
      verify(mockTimerRepository.startTimer(tStartTimerParams));
      verifyNoMoreInteractions(mockTimerRepository);
    },
  );
}
