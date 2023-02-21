import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<CreateKanban>(),
  MockSpec<DeleteKanban>(),
  MockSpec<ReadAllKanbans>(),
  MockSpec<UpdateKanban>(),
])
// Ignore this class. Only need to right work mockito annotation.
// ignore: unused_element
class _Empty {}
