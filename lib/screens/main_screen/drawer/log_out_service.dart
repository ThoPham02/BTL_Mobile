import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LogOutService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> Logout(BuildContext context) async {
    try {
      User? currentUser = _auth.currentUser;

      if (currentUser != null) {
        await _auth.signOut();

        await _firestore.collection('users').doc(currentUser.uid).delete();

        clearToken();

        Navigator.pushReplacementNamed(context, 'auth');
      }
    } catch (e) {
      print('Lỗi khi xóa token và đăng xuất: $e');
    }
  }

  Future<void> clearToken() async {
    try {
      if (_auth.currentUser != null) {
        await _auth.signOut();
      }
    } catch (e) {
      print('Lỗi khi xóa token và đăng xuất: $e');
    }
  }
}
