// Mocks generated by Mockito 5.3.2 from annotations
// in home_challenge_kanban/test/features/kanban_list/data/database/mock_kanban_database.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database.dart'
    as _i3;
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeKanbanModel_0 extends _i1.SmartFake implements _i2.KanbanModel {
  _FakeKanbanModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [KanbanDatabase].
///
/// See the documentation for Mockito's code generation for more information.
class MockKanbanDatabase extends _i1.Mock implements _i3.KanbanDatabase {
  @override
  _i4.Future<_i2.KanbanModel> createKanban(
    String? name,
    String? body,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createKanban,
          [
            name,
            body,
          ],
        ),
        returnValue: _i4.Future<_i2.KanbanModel>.value(_FakeKanbanModel_0(
          this,
          Invocation.method(
            #createKanban,
            [
              name,
              body,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.KanbanModel>.value(_FakeKanbanModel_0(
          this,
          Invocation.method(
            #createKanban,
            [
              name,
              body,
            ],
          ),
        )),
      ) as _i4.Future<_i2.KanbanModel>);
  @override
  _i4.Future<List<_i2.KanbanModel>> getAllKanbanEntities() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllKanbanEntities,
          [],
        ),
        returnValue:
            _i4.Future<List<_i2.KanbanModel>>.value(<_i2.KanbanModel>[]),
        returnValueForMissingStub:
            _i4.Future<List<_i2.KanbanModel>>.value(<_i2.KanbanModel>[]),
      ) as _i4.Future<List<_i2.KanbanModel>>);
  @override
  _i4.Future<_i2.KanbanModel> readKanbanByKey(String? key) =>
      (super.noSuchMethod(
        Invocation.method(
          #readKanbanByKey,
          [key],
        ),
        returnValue: _i4.Future<_i2.KanbanModel>.value(_FakeKanbanModel_0(
          this,
          Invocation.method(
            #readKanbanByKey,
            [key],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.KanbanModel>.value(_FakeKanbanModel_0(
          this,
          Invocation.method(
            #readKanbanByKey,
            [key],
          ),
        )),
      ) as _i4.Future<_i2.KanbanModel>);
  @override
  _i4.Future<_i2.KanbanModel> updateKanban(dynamic entity) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateKanban,
          [entity],
        ),
        returnValue: _i4.Future<_i2.KanbanModel>.value(_FakeKanbanModel_0(
          this,
          Invocation.method(
            #updateKanban,
            [entity],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.KanbanModel>.value(_FakeKanbanModel_0(
          this,
          Invocation.method(
            #updateKanban,
            [entity],
          ),
        )),
      ) as _i4.Future<_i2.KanbanModel>);
  @override
  _i4.Future<int> deleteKanban(String? key) => (super.noSuchMethod(
        Invocation.method(
          #deleteKanban,
          [key],
        ),
        returnValue: _i4.Future<int>.value(0),
        returnValueForMissingStub: _i4.Future<int>.value(0),
      ) as _i4.Future<int>);
}
