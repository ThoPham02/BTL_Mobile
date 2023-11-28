part of 'task_cubit.dart';

class TaskState extends Equatable {
  final int selectedIndex;
  final bool isDescription;
  final TaskEntity? currentTask;

  const TaskState({
    this.selectedIndex = 0,
    this.isDescription = true,
    this.currentTask,
  });

  @override
  List<Object?> get props => [
        selectedIndex,
        isDescription,
        currentTask,
      ];

  TaskState copyWith({
    int? selectedIndex,
    bool? isDescription,
    TaskEntity? currentTask,
  }) {
    return TaskState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      isDescription: isDescription ?? this.isDescription,
      currentTask: currentTask ?? this.currentTask,
    );
  }
}
