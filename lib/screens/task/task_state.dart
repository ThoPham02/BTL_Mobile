part of 'task_cubit.dart';

class TaskState extends Equatable {
  final int selectedIndex;
  final int displayNumber;
  final bool isDescription;

  const TaskState({
    this.selectedIndex = 0,
    this.displayNumber = 0,
    this.isDescription = true,
  });

  @override
  List<Object?> get props => [
        selectedIndex,
        displayNumber,
        isDescription,
      ];

  TaskState copyWith(
      {int? selectedIndex, int? displayNumber, bool? isDescription}) {
    return TaskState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      displayNumber: displayNumber ?? this.displayNumber,
      isDescription: isDescription ?? this.isDescription,
    );
  }
}
