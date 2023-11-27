import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(const TaskState());

  void changeTab(bool isDescription) {
    emit(state.copyWith(
      isDescription: isDescription,
    ));
  }

  void increase() {
    emit(state.copyWith(
      displayNumber: state.displayNumber + 1,
    ));
  }
}
