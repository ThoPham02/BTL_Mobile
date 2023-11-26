part of 'mainhome_cubit.dart';

class MainhomeState extends Equatable {
  final int selectedIndex;
  final int displayNumber;
  final List<TaskEntity> listCard;

  const MainhomeState(
      {this.selectedIndex = 0,
      this.displayNumber = 0,
      this.listCard = const []});

  @override
  List<Object?> get props => [
        selectedIndex,
        displayNumber,
        listCard,
      ];

  MainhomeState copyWith({
    int? selectedIndex,
    int? displayNumber,
    List<TaskEntity>? listCard,
  }) {
    return MainhomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      displayNumber: displayNumber ?? this.displayNumber,
      listCard: listCard ?? this.listCard,
    );
  }
}
