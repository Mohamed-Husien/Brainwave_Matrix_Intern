part of 'to_do_cubit.dart';

@immutable
sealed class ToDoState {}

final class ToDoInitial extends ToDoState {}

final class ToDoInSuccess extends ToDoState {}
