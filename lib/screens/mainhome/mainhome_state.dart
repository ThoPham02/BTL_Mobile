part of 'mainhome_cubit.dart';

class MainhomeState extends Equatable {
  final int selectedIndex;
  final int displayNumber;

  const MainhomeState({
    this.selectedIndex = 0,
    this.displayNumber = 0,
  });

  @override
  List<Object?> get props => [
        selectedIndex,
    displayNumber,
      ];

  MainhomeState copyWith({
    int? selectedIndex,
    int? displayNumber,
  }) {
    return MainhomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      displayNumber: displayNumber ?? this.displayNumber,
    );
  }
}