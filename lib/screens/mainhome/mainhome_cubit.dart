import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task_management/models/card.dart';
import 'package:task_management/models/task.dart';

part 'mainhome_state.dart';

class MainhomeCubit extends Cubit<MainhomeState> {
  MainhomeCubit() : super(const MainhomeState());

  void changeTab(bool isTab) {
    emit(state.copyWith(
      isProgress: isTab,
    ));
  }

  void addCard() {
    emit(state.copyWith(listCard: [
      CardEntity(name: "Mobile App Design", numTask: 2),
      CardEntity(name: "Mobile App Design", numTask: 2),
      CardEntity(name: "Mobile App Design", numTask: 2),
      CardEntity(name: "Mobile App Design", numTask: 2),
      CardEntity(name: "Mobile App Design", numTask: 2),
    ]));
  }

  void addTask() {
    emit(state.copyWith(listTask: [
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
    ]));
  }
}
