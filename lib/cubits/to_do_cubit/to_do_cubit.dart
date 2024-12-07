import 'package:bloc/bloc.dart';
import 'package:brainwave_matrix_intern_to_do_app/models/to_do_item_model.dart';
import 'package:hive_flutter/adapters.dart';

part 'to_do_state.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit() : super(ToDoInitial());
  List<ToDoItemModel>? toDos;
  fetchAllToDo() async {
    var toDoBox = Hive.box<ToDoItemModel>('to_do');
    toDos = toDoBox.values.toList();
    emit(ToDoInSuccess());
  }
}
