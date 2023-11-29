import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_management/models/task_entity.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(const TaskState());

  void changeTab(bool isDescription) {
    emit(
      state.copyWith(
        isDescription: isDescription,
        currentTask: TaskEntity(
            documents: ["ABC", "XYZ", "GHI"],
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum mauris nec vel in tristique curabitur. Ridiculus aliquet elit sed fringilla sollicitudin sed. Malesuada ac imperdiet velit feugiat. Sit pretium, nibh diam lorem egestas morbi lorem sapien.'),
      ),
    );
  }
}
