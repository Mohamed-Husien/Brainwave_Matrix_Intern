import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:brainwave_matrix_intern_to_do_app/models/to_do_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

part 'add_to_do_state.dart';

class AddToDoCubit extends Cubit<AddToDoState> {
  AddToDoCubit() : super(AddToDoInitial());

  addToDo(ToDoItemModel toDo) async {
    emit(AddToDoInitial());

    try {
      var toDoBox = Hive.box<ToDoItemModel>('to_do');
      await toDoBox.add(toDo);
      emit(AddToDoSucess());
    } catch (e) {
      emit(AddToDoFailure());
      log(e.toString());
    }
  }
}
