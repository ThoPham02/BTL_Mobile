part of 'mainhome_cubit.dart';

class MainhomeState extends Equatable {
  final int selectedIndex;
  final int displayNumber;
  final bool isProgress;
  final String searchInput;
  final List<CardEntity> listCard;
  final List<TaskEntity> listTask;

  const MainhomeState({
    this.selectedIndex = 0,
    this.displayNumber = 0,
    this.isProgress = true,
    this.searchInput = "",
    this.listCard = const [],
    this.listTask = const [],
  });

  @override
  List<Object?> get props => [
        selectedIndex,
        displayNumber,
        isProgress,
        searchInput,
        listCard,
        listTask
      ];

  MainhomeState copyWith(
      {int? selectedIndex,
      int? displayNumber,
      bool? isProgress,
      String? searchInput,
      List<CardEntity>? listCard,
      List<TaskEntity>? listTask}) {
    return MainhomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      displayNumber: displayNumber ?? this.displayNumber,
      isProgress: isProgress ?? this.isProgress,
      searchInput: searchInput ?? this.searchInput,
      listCard: listCard ?? this.listCard,
      listTask: listTask ?? this.listTask,
    );
  }
}
