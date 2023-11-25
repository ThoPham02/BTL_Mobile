import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mainhome_state.dart';

void handleTabBarPress() {

}

class MainhomeCubit extends Cubit<MainhomeState> {
  MainhomeCubit() : super(const MainhomeState());

  void changeTab(int index) {
    emit(state.copyWith(
      selectedIndex: index,
    ));
  }

  void increase() {
    emit(state.copyWith(
      displayNumber: state.displayNumber +1,
    ));
  }
}
