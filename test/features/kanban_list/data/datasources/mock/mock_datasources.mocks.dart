// Mocks generated by Mockito 5.3.2 from annotations
// in home_challenge_kanban/test/features/kanban_list/data/datasources/mock/mock_datasources.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as _i2;
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart'
    as _i3;
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart'
    as _i5;
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart'
    as _i6;
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

class _FakeIList_0<T> extends _i1.SmartFake implements _i2.IList<T> {
  _FakeIList_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString([bool? prettyPrint]) => super.toString();
}

/// A class which mocks [CrudKanbanLocalDatasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockCrudKanbanLocalDatasource extends _i1.Mock
    implements _i3.CrudKanbanLocalDatasource {
  @override
  _i4.Future<_i2.IList<_i5.KanbanModel>> createKanban(
          _i6.CreateKanbanParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #createKanban,
          [params],
        ),
        returnValue: _i4.Future<_i2.IList<_i5.KanbanModel>>.value(
            _FakeIList_0<_i5.KanbanModel>(
          this,
          Invocation.method(
            #createKanban,
            [params],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.IList<_i5.KanbanModel>>.value(
            _FakeIList_0<_i5.KanbanModel>(
          this,
          Invocation.method(
            #createKanban,
            [params],
          ),
        )),
      ) as _i4.Future<_i2.IList<_i5.KanbanModel>>);
  @override
  _i4.Future<_i2.IList<_i5.KanbanModel>> deleteKanban(String? key) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteKanban,
          [key],
        ),
        returnValue: _i4.Future<_i2.IList<_i5.KanbanModel>>.value(
            _FakeIList_0<_i5.KanbanModel>(
          this,
          Invocation.method(
            #deleteKanban,
            [key],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.IList<_i5.KanbanModel>>.value(
            _FakeIList_0<_i5.KanbanModel>(
          this,
          Invocation.method(
            #deleteKanban,
            [key],
          ),
        )),
      ) as _i4.Future<_i2.IList<_i5.KanbanModel>>);
  @override
  _i4.Future<_i2.IList<_i5.KanbanModel>> readAllKanbans() =>
      (super.noSuchMethod(
        Invocation.method(
          #readAllKanbans,
          [],
        ),
        returnValue: _i4.Future<_i2.IList<_i5.KanbanModel>>.value(
            _FakeIList_0<_i5.KanbanModel>(
          this,
          Invocation.method(
            #readAllKanbans,
            [],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.IList<_i5.KanbanModel>>.value(
            _FakeIList_0<_i5.KanbanModel>(
          this,
          Invocation.method(
            #readAllKanbans,
            [],
          ),
        )),
      ) as _i4.Future<_i2.IList<_i5.KanbanModel>>);
  @override
  _i4.Future<_i2.IList<_i5.KanbanModel>> updateKanban(
          _i6.UpdateKanbanParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateKanban,
          [params],
        ),
        returnValue: _i4.Future<_i2.IList<_i5.KanbanModel>>.value(
            _FakeIList_0<_i5.KanbanModel>(
          this,
          Invocation.method(
            #updateKanban,
            [params],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.IList<_i5.KanbanModel>>.value(
            _FakeIList_0<_i5.KanbanModel>(
          this,
          Invocation.method(
            #updateKanban,
            [params],
          ),
        )),
      ) as _i4.Future<_i2.IList<_i5.KanbanModel>>);
}
