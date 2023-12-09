part of 'add_task_cubit.dart';

class AddTaskState extends Equatable {
  final List<CardEntity>? cards;
  final String cardID;
  final String taskName;
  final DateTime? date;
  final TimeOfDay? timeStart;
  final TimeOfDay? timeEnd;
  final String description;
  final bool invalidInput;

  const AddTaskState({
    this.cards,
    this.cardID = "",
    this.taskName = "",
    this.date,
    this.timeStart,
    this.timeEnd,
    this.description = "",
    this.invalidInput = false,
  });

  @override
  List<Object?> get props => [
        cards,
        cardID,
        taskName,
        date,
        timeStart,
        timeEnd,
        description,
        invalidInput
      ];

  AddTaskState copyWith({
    List<CardEntity>? cards,
    String? cardID,
    String? taskName,
    DateTime? date,
    TimeOfDay? timeStart,
    TimeOfDay? timeEnd,
    String? description,
    bool? invalidInput,
  }) {
    return AddTaskState(
      cards: cards ?? this.cards,
      cardID: cardID ?? this.cardID,
      taskName: taskName ?? this.taskName,
      date: date ?? this.date,
      timeStart: timeStart ?? this.timeStart,
      timeEnd: timeEnd ?? this.timeEnd,
      description: description ?? this.description,
      invalidInput: invalidInput ?? this.invalidInput,
    );
  }
}
