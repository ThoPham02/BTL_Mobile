part of 'task_cubit.dart';

class TaskState extends Equatable {
  final int selectedIndex;
  final bool isDescription;

  const TaskState({
    this.selectedIndex = 0,
    this.isDescription = true,
  });

  @override
  List<Object?> get props => [
        selectedIndex,
        isDescription,
      ];

  TaskState copyWith({
    int? selectedIndex,
    bool? isDescription,
  }) {
    return TaskState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      isDescription: isDescription ?? this.isDescription,
    );
  }
}
