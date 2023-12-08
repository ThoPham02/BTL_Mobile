// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:task_management/models/user_entity.dart';
import 'package:task_management/services/fire_storage_service.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FireStorageService _store = FireStorageService();

  Future<UserEntity?> signUp(String username, email, password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (credential.user?.uid != "") {
        UserEntity user = UserEntity(
          userID: credential.user?.uid,
          name: username,
          email: email,
          password: password,
        );
        _store.createUser(user);

        return user;
      }

      return null;
    } catch (e) {
      print("Sign Up Wrong!!");
      return null;
    }
  }

  Future<UserEntity?> signIn(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user?.uid != "") {
        return _store.getUser(credential.user?.uid);
      }

      return null;
    } catch (e) {
      print("Sign In Wrong!!");
      return null;
    }
  }
}
