import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sebet/models/user_data_model.dart';

import '../utils/constants.dart';

class UserAuth extends ChangeNotifier {
  final FirebaseAuth _auth = Constants.auth;
  final FirebaseFirestore _firestore = Constants.firestore;
  final CollectionReference _userCollection = Constants.users;
  UserDataModel? _userData;
  StreamSubscription<UserDataModel>? _userDataSubscription;

  UserDataModel? get userData => _userData;

  // Login Function
  Future<bool> logIn({
    required BuildContext context,
    required UserDataModel userData,
  }) async {
    try {
      final UserCredential result = await _auth.signInWithEmailAndPassword(
          email: userData.email, password: userData.password);
      return true;
    } catch (error) {
      print('Login error is $error');

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Following error $error')));
      return false;
    }
  }

  //Signup function
  Future<bool> signUp({
    required UserDataModel userData,
    required BuildContext context,
  }) async {
    try {
      final UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: userData.email, password: userData.password);
      userData.id = result.user!.uid;
      await _userCollection.doc(result.user!.uid).set(userData.toMap());
      return true;
    } catch (error) {
      print('The error is$error');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Following error in signup$error')));
      return false;
    }
  }

  //Update Function
  Future<bool> updateData(
      Map<String, dynamic> data, String uid, BuildContext context) async {
    try {
      await _userCollection.doc(uid).update(data);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Data Updated')));
      return true;
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Following error in update$error')));
      return false;
    }
  }


  // 'users' collection stream
  Stream<UserDataModel> get userDataStream {
    return _userCollection
        .doc(_auth.currentUser!.uid)
        .snapshots()
        .map((snapshot) {
      return UserDataModel.fromMap(snapshot.data() as Map<String, dynamic>);
    });
  }

  UserAuth() {
    _userDataSubscription = userDataStream.listen((userData) {
      _userData = userData;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _userDataSubscription?.cancel();
    super.dispose();
  }
}
