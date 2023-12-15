// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task_management/constants/global_variables.dart';
import 'package:task_management/models/card_entity.dart';
import 'package:task_management/models/task_entity.dart';
import 'package:task_management/models/user_entity.dart';

class FireStorageService {
  // User Store
  Future<UserEntity?> createUser(UserEntity user) async {
    await FirebaseFirestore.instance
        .collection(DB_COLLECTION)
        .doc(user.userID)
        .set(user.toJson());

    return user;
  }

  Future<UserEntity?> getUser(String? userID) async {
    DocumentSnapshot<Object?> userData = await FirebaseFirestore.instance
        .collection(DB_COLLECTION)
        .doc(userID)
        .get();
    if (userData.data() == null) {
      return null;
    }

    return UserEntity.fromJson(userData.data() as Map<String, dynamic>);
  }

  Future<UserEntity?> updateUser(UserEntity user) async {
    await FirebaseFirestore.instance
        .collection(DB_COLLECTION)
        .doc(user.userID)
        .update(user.toJson());

    return user;
  }

  // Card Store
  Future<CardEntity?> createCard(String userID, CardEntity card) async {
    await FirebaseFirestore.instance
        .collection("$DB_COLLECTION/$userID/$CARD_COLLECTION")
        .doc(card.cardID)
        .set(card.toJson());

    return card;
  }

  Future<CardEntity?> getCard(String userID, String cardID) async {
    print("$DB_COLLECTION/$userID/$CARD_COLLECTION");
    print(cardID);
    DocumentSnapshot<Object?> cardData = await FirebaseFirestore.instance
        .collection("$DB_COLLECTION/$userID/$CARD_COLLECTION")
        .doc(cardID)
        .get();
    if (cardData.data() == null) {
      return null;
    }

    return CardEntity.fromJson(cardData.data() as Map<String, dynamic>);
  }

  Future<CardEntity?> updateCard(String userID, CardEntity card) async {
    await FirebaseFirestore.instance
        .collection("$DB_COLLECTION/$userID/$CARD_COLLECTION")
        .doc(card.cardID)
        .update(card.toJson());

    return card;
  }

  Future deleteCard(String userID, String cardID) async {
    await FirebaseFirestore.instance
        .collection("$DB_COLLECTION/$userID/$CARD_COLLECTION")
        .doc(cardID)
        .delete();
  }

  Future<List<CardEntity>?> listCard(String userID, String searchStr) async {
    List<CardEntity> listCard = [];

    Iterable<CardEntity> cards = await FirebaseFirestore.instance
        .collection("$DB_COLLECTION/$userID/$CARD_COLLECTION")
        .get()
        .then(
          (value) => value.docs.map(
            (e) => CardEntity.fromJson(
              e.data(),
            ),
          ),
        );

    for (var card in cards) {
      if (searchStr == "" || card.name?.contains(searchStr) == true) {
        listCard.add(card);
      }
    }
    return listCard;
  }

  // Task Store
  Future<TaskEntity?> createTask(
      String userID, String cardID, TaskEntity task) async {
    await FirebaseFirestore.instance
        .collection(
            "$DB_COLLECTION/$userID/$CARD_COLLECTION/$cardID/$TASK_COLLECTION")
        .doc(task.taskID)
        .set(task.toJson());

    return task;
  }

  Future<TaskEntity?> getTask(
      String userID, String cardID, String taskID) async {
    DocumentSnapshot<Object?> taskData = await FirebaseFirestore.instance
        .collection(
            "$DB_COLLECTION/$userID/$CARD_COLLECTION/$cardID/$TASK_COLLECTION")
        .doc(taskID)
        .get();

    return TaskEntity.fromJson(taskData.data() as Map<String, dynamic>);
  }

  Future<TaskEntity?> updateTask(
      String userID, String cardID, TaskEntity task) async {
    await FirebaseFirestore.instance
        .collection(
            "$DB_COLLECTION/$userID/$CARD_COLLECTION/$cardID/$TASK_COLLECTION")
        .doc(task.taskID)
        .update(task.toJson());

    return task;
  }

  Future deleteTask(String userID, String cardID, String taskID) async {
    await FirebaseFirestore.instance
        .collection(
            "$DB_COLLECTION/$userID/$CARD_COLLECTION/$cardID/$TASK_COLLECTION")
        .doc(cardID)
        .delete();
  }

  Future<List<TaskEntity>?> listTask(String? userID, String cardID) async {
    List<TaskEntity> listTask = [];

    Iterable<TaskEntity> tasks = await FirebaseFirestore.instance
        .collection(
            "$DB_COLLECTION/$userID/$CARD_COLLECTION/$cardID/$TASK_COLLECTION")
        .get()
        .then(
          (value) => value.docs.map(
            (e) => TaskEntity.fromJson(
              e.data(),
            ),
          ),
        );

    for (var task in tasks) {
      listTask.add(task);
    }
    return listTask;
  }
}
