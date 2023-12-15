import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/models/card_entity.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/services/fire_storage_service.dart';
import 'package:task_management/utils/genid.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(const AddTaskState());
  final FireStorageService _firestore = FireStorageService();

  void setCard(String card) {
    emit(state.copyWith(cardID: card));
  }

  void setTimeStart(TimeOfDay time) {
    emit(state.copyWith(timeStart: time));
  }

  void setTimeEnd(TimeOfDay time) {
    emit(state.copyWith(timeEnd: time));
  }

  Future<TaskEntity?> addTask(String userID, cardID, name, des) async {
    CardEntity? card = await _firestore.getCard(userID, cardID);
    return _firestore.createTask(
        userID,
        cardID,
        TaskEntity(
          taskID: genID(),
          name: name,
          cardName: card?.name,
          status: 0,
          timeEnd: state.timeEnd!.hour * 60 + state.timeEnd!.minute,
          timeStart: state.timeStart!.hour * 60 + state.timeStart!.minute,
          description: des,
        ));
  }
}
