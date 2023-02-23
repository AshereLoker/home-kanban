import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/timer/data/datasource/timer_local_datasource.dart';
import 'package:home_challenge_kanban/features/timer/data/datasource/timer_local_datasource_impl.dart';
import 'package:mockito/mockito.dart';

import '../../test_timer_constants.dart';
import '../timer_service/mock/mock_timer_service.mocks.dart';

void main() {
  late TimerLocalDatasource dataSource;
  late MockTimerService mockTimerService;

  setUp(() {
    mockTimerService = MockTimerService();
    dataSource = TimerLocalDatasourceImpl(timerService: mockTimerService);
  });

  group('pauseTimer', () {
    test(
      'should return normally from timer service when timer is successfuly paused in timer service',
      () async {
        // arrange.
        when(mockTimerService.pauseTimer())
            .thenAnswer((_) async => returnsNormally);
        // act.
        final call = dataSource.pauseTimer();
        // assert.
        expect(() async => await call, isA<void>());
        verify(mockTimerService.pauseTimer());
        verifyNoMoreInteractions(mockTimerService);
      },
    );

    test(
      'should throw an Exception from timer service when timer is unsuccessfuly paused',
      () async {
        // arrange.
        when(mockTimerService.pauseTimer()).thenThrow(LocalTimerException());
        // act.
        final call = dataSource.pauseTimer();
        // assert.
        expect(
          () async => await call,
          throwsA(const TypeMatcher<LocalTimerException>()),
        );
        verify(mockTimerService.pauseTimer());
        verifyNoMoreInteractions(mockTimerService);
      },
    );
  });

  group('startTimer', () {
    test(
      'should return value stream from timer service when timer is successfuly started in timer service',
      () async {
        // arrange.
        when(mockTimerService.startTimer(any))
            .thenAnswer((_) async => tTimeStream);
        // act.
        final result = await dataSource.startTimer(tStartTimerParams);
        // assert.
        expect(result, equals(tTimeStream));
        verify(mockTimerService.startTimer(tStartTimerParams));
        verifyNoMoreInteractions(mockTimerService);
      },
    );

    test(
      'should throw an Exception from timer service when timer starting is unsuccessful',
      () async {
        // arrange.
        when(mockTimerService.startTimer(any)).thenThrow(LocalTimerException());
        // act.
        final call = dataSource.startTimer(tStartTimerParams);
        // assert.
        expect(
          () async => await call,
          throwsA(const TypeMatcher<LocalTimerException>()),
        );
        verify(mockTimerService.startTimer(tStartTimerParams));
        verifyNoMoreInteractions(mockTimerService);
      },
    );
  });

  group('stopTimer', () {
    test(
      'should return normally from timer service when timer is successfuly started in timer service',
      () async {
        // arrange.
        when(mockTimerService.stopTimer())
            .thenAnswer((_) async => returnsNormally);
        // act.
        final call = dataSource.stopTimer();
        // assert.
        expect(() async => await call, isA<void>());
        verify(mockTimerService.stopTimer());
        verifyNoMoreInteractions(mockTimerService);
      },
    );

    test(
      'should throw an Exception from timer service when timer starting is unsuccessful',
      () async {
        // arrange.
        when(mockTimerService.stopTimer()).thenThrow(LocalTimerException());
        // act.
        final call = dataSource.stopTimer();
        // assert.
        expect(
          () async => await call,
          throwsA(const TypeMatcher<LocalTimerException>()),
        );
        verify(mockTimerService.stopTimer());
        verifyNoMoreInteractions(mockTimerService);
      },
    );
  });
}
