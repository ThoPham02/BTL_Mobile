import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:task_management/models/user_entity.dart';

class FireStorageService {
  final String userCollection;

  FireStorageService({required this.userCollection});

  late final CollectionReference _usersCollectionReference =
      FirebaseFirestore.instance.collection(userCollection);

  Future<UserEntity?> createUser(UserEntity user) async {
    try {
      await _usersCollectionReference
          .doc(user.userID.toString())
          .set(user.toJson());
    } catch (e) {
      if (e is PlatformException) {
        return null;
      }
      return null;
    }
    return null;
  }

  Future<UserEntity?> getUser(String? uid) async {
    try {
      DocumentSnapshot<Object?> userData;

      userData = await _usersCollectionReference.doc(uid).get();
      // var user = userData.data();

      return UserEntity.fromJson(userData.data() as Map<String, dynamic>);
    } catch (e) {
      if (e is PlatformException) {
        return null;
      }
      return null;
    }
  }

  // Future<UserEntity?> updateUser(UserEntity accountEntity) async {
  //   try {
  //     final id = GlobalData.instance.accountEntity?.id;
  //     await _usersCollectionReference.doc(id).update(accountEntity.toJson());
  //   } catch (e) {
  //     print("$e");
  //   }
  //   return null;
  // }
}
