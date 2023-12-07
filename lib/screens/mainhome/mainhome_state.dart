part of 'mainhome_cubit.dart';

class MainhomeState extends Equatable {
  final int selectedIndex;
  final int displayNumber;
  final int isProgress;
  final String searchInput;
  final String currentCard;
  final List<CardEntity> listCard;
  final List<TaskEntity> listTask;

  const MainhomeState({
    this.selectedIndex = 0,
    this.displayNumber = 0,
    this.isProgress = 2,
    this.searchInput = "",
    this.currentCard = "",
    this.listCard = const [],
    this.listTask = const [],
  });

  @override
  List<Object?> get props => [
        selectedIndex,
        displayNumber,
        isProgress,
        searchInput,
        currentCard,
        listCard,
        listTask
      ];

  MainhomeState copyWith({
    int? selectedIndex,
    int? displayNumber,
    int? isProgress,
    String? searchInput,
    String? currentCard,
    List<CardEntity>? listCard,
    List<TaskEntity>? listTask,
  }) {
    return MainhomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      displayNumber: displayNumber ?? this.displayNumber,
      isProgress: isProgress ?? this.isProgress,
      searchInput: searchInput ?? this.searchInput,
      currentCard: currentCard ?? this.currentCard,
      listCard: listCard ?? this.listCard,
      listTask: listTask ?? this.listTask,
    );
  }
}
