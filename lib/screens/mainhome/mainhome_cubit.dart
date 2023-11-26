import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task_management/models/task.dart';

part 'mainhome_state.dart';

class MainhomeCubit extends Cubit<MainhomeState> {
  MainhomeCubit() : super(const MainhomeState());

  void changeTab(int index) {
    emit(state.copyWith(
      selectedIndex: index,
    ));
  }
}
