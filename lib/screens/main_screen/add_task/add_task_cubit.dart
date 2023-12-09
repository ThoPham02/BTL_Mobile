import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/models/card_entity.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(const AddTaskState());

  void setCard(String cardID) {
    emit(state.copyWith());
  }

  void setDate(DateTime date) {
    emit(state.copyWith());
  }

  void setTimeStart(TimeOfDay time) {
    emit(state.copyWith());
  }

  void setTimeEnd(TimeOfDay time) {
    emit(state.copyWith());
  }

  void addTask(String name, des) {
    
  }
}
