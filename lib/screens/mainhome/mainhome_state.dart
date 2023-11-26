part of 'mainhome_cubit.dart';

class MainhomeState extends Equatable {
  final int selectedIndex;
  final int displayNumber;
  final bool isProgress;
  final List<CardEntity> listCard;
  final List<TaskEntity> listTask;

  const MainhomeState({
    this.selectedIndex = 0,
    this.displayNumber = 0,
    this.isProgress = true,
    this.listCard = const [],
    this.listTask = const [],
  });

  @override
  List<Object?> get props =>
      [selectedIndex, displayNumber, isProgress, listCard, listTask];

  MainhomeState copyWith(
      {int? selectedIndex,
      int? displayNumber,
      bool? isProgress,
      List<CardEntity>? listCard,
      List<TaskEntity>? listTask}) {
    return MainhomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      displayNumber: displayNumber ?? this.displayNumber,
      isProgress: isProgress ?? this.isProgress,
      listCard: listCard ?? this.listCard,
      listTask: listTask ?? this.listTask,
    );
  }
}
