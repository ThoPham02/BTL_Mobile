import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task_management/models/card_entity.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/services/fire_storage_service.dart';

part 'mainhome_state.dart';

class MainhomeCubit extends Cubit<MainhomeState> {
  MainhomeCubit() : super(const MainhomeState());
  final FireStorageService _firestore = FireStorageService();

  changeSearchInput(text) {
    emit(state.copyWith(searchInput: text));
  }

  void changeCurrentTab(String? userID, String? cardID) async {
    if (cardID != null) {
      List<TaskEntity>? tasks = await _firestore.listTask(userID, cardID);

      emit(
        state.copyWith(
          currentCard: cardID,
          listTask: tasks,
        ),
      );
    }
  }

  void changeTab(int isTab) {
    emit(state.copyWith(
      isProgress: isTab,
    ));
  }

  filterCard(String userID, searchStr) async {
    List<CardEntity>? cardRes = await _firestore.listCard(userID, searchStr);
    // ignore: avoid_print
    print(cardRes?.length);
    emit(
      state.copyWith(
        listCard: cardRes,
      ),
    );
  }
}
