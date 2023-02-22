// ignore_for_file: void_checks

import 'dart:ffi';

import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/timer/data/repositories/timer_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import '../../timer_test_constants.dart';
import '../datasources/mock/mock_timer_local_datasource.mocks.dart';

void main() {
  late TimerRepositoryImpl repository;
  late MockTimerLocalDatasource mockLocalDatasource;

  setUp(() {
    mockLocalDatasource = MockTimerLocalDatasource();
    repository = TimerRepositoryImpl(localDatasource: mockLocalDatasource);
  });

  group('timer local datasource:', () {
    test(
      'should return normally when timer paused in local datasource is successful',
      () async {
        // arrange.
        when(mockLocalDatasource.pauseTimer())
            .thenAnswer((_) async => returnsNormally);
        // act.
        final result = await repository.pauseTimer();
        // assert.
        expect(result, const Right<Failure, void>(returnsNormally));
        verify(mockLocalDatasource.pauseTimer());
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return value stream when start timer in local datasource is successful',
      () async {
        // arrange.
        when(mockLocalDatasource.startTimer(any))
            .thenAnswer((_) async => tTimeStream);
        // act.
        final result = await repository.startTimer(tStartTimerParams);
        // assert.
        expect(result, Right<Failure, ValueStream<int>>(tTimeStream));
        verify(mockLocalDatasource.startTimer(tStartTimerParams));
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return normally when timer stopped in local datasource is successful',
      () async {
        // arrange.
        when(mockLocalDatasource.stopTimer())
            .thenAnswer((_) async => returnsNormally);
        // act.
        final result = await repository.stopTimer();
        // assert.
        expect(result, const Right<Failure, void>(returnsNormally));
        verify(mockLocalDatasource.stopTimer());
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return local timer failure when timer paused in local datasource is unsuccessful',
      () async {
        // arrange.
        when(mockLocalDatasource.pauseTimer())
            .thenAnswer((_) async => returnsNormally);
        // act.
        final result = await repository.pauseTimer();
        // assert.
        expect(result, const Right<Failure, void>(returnsNormally));
        verify(mockLocalDatasource.pauseTimer());
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return local timer failure when start timer in local datasource is unsuccessful',
      () async {
        // arrange.
        when(mockLocalDatasource.startTimer(any))
            .thenAnswer((_) async => tTimeStream);
        // act.
        final result = await repository.startTimer(tStartTimerParams);
        // assert.
        expect(result, Right<Failure, ValueStream<int>>(tTimeStream));
        verify(mockLocalDatasource.startTimer(tStartTimerParams));
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );

    test(
      'should return local timer failure when timer stopped in local datasource is unsuccessful',
      () async {
        // arrange.
        when(mockLocalDatasource.stopTimer())
            .thenAnswer((_) async => returnsNormally);
        // act.
        final result = await repository.stopTimer();
        // assert.
        expect(result, const Right<Failure, void>(returnsNormally));
        verify(mockLocalDatasource.stopTimer());
        verifyNoMoreInteractions(mockLocalDatasource);
      },
    );
  });
}
