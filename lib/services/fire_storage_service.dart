import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:task_management/models/user_entity.dart';

class FireStorageService {
  final CollectionReference _usersCollectionReference =
      FirebaseFirestore.instance.collection('user');

  Future createUser(UserEntity user) async {
    try {
      await _usersCollectionReference
          .doc(user.userID.toString())
          .set(user.toJson());
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }
//
// Future<AccountEntity?> getUser({String? uid}) async {
//   try {
//     var userData;
//     if (uid != null) {
//       userData = await _usersCollectionReference.doc(uid).get();
//     } else {
//       final id = GlobalData.instance.accountEntity?.id;
//       userData = await _usersCollectionReference.doc(id).get();
//     }
//
//     var user = userData.data();
//     debugPrint("$user");
//
//     return AccountEntity.fromData(userData.data() as Map<String, dynamic>);
//   } catch (e) {
//     if (e is PlatformException) {
//       return null;
//     }
//     return null;
//   }
// }
//
// Future updateUser(AccountEntity accountEntity) async {
//   try {
//     final id = GlobalData.instance.accountEntity?.id;
//     await _usersCollectionReference.doc(id).update(accountEntity.toJson());
//   } catch (e) {
//     debugPrint("$e");
//   }
// }
}
