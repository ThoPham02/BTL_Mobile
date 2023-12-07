import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task_management/models/card_entity.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/services/fire_storage_service.dart';

part 'mainhome_state.dart';

class MainhomeCubit extends Cubit<MainhomeState> {
  MainhomeCubit() : super(const MainhomeState());
  final FireStorageService _firestore = FireStorageService();

  changeSearchInput(text) {
    emit(state.copyWith(searchInput: text));
  }

  void changeTab(bool isTab) {
    emit(state.copyWith(
      isProgress: isTab,
    ));
  }

  void addCard() {
    emit(
      state.copyWith(
        listCard: CardEntity.getCardEntity(),
      ),
    );
  }

  filterCard(String userID, searchStr) async {
    List<CardEntity>? cardRes = await _firestore.listCard(userID, searchStr);
    print(cardRes?.length);
    emit(
      state.copyWith(
        listCard: cardRes,
      ),
    );
  }

  void addTask() {
    emit(state.copyWith(listTask: [
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
      TaskEntity(name: "Mobile App Design", timeEnd: 2, timeStart: 1),
    ]));
  }

  testFirebase() async {
    UserEntity user = UserEntity(
      userID: "123456",
      name: "Tho test firebase",
      email: "tholgbg2002@gmail.com",
    );

    UserEntity? userRes = await _firestore.createUser(user);
    if (userRes != null) {
      print("Test Success!");

      emit(state.copyWith());
    } else {
      print("Some thing error !");
    }
  }
}
