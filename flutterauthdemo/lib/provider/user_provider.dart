import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutterauthdemo/provider/user.dart';

enum Status { UNINITIALIZED, AUTHENTICATED, AUTHENTICATING, UNAUTHENTICATED }

class UserProvider with ChangeNotifier {
  FirebaseAuth _auth;
  FirebaseUser _user;
  Status _status = Status.UNINITIALIZED;
  Status get status => _status;
  FirebaseUser get user => _user;
  String get uid => _user.uid;
  Firestore _firestore = Firestore.instance;
  List<String> _userName = [];

  List get userName {
    return _userName;
  }
  // UserServices _userServices = UserServices();

  UserProvider.initialize() : _auth = FirebaseAuth.instance {
    _auth.onAuthStateChanged.listen(_onStateChanged);
  }

  Future<bool> signIn(String email, String password) async {
    try {
      _status = Status.AUTHENTICATING;
      notifyListeners();
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      _status = Status.UNAUTHENTICATED;
      notifyListeners();
      print(e.toString());
      return false;
    }
  }

  Future<bool> signUp(String name, String email, String password) async {
    try {
      _status = Status.AUTHENTICATING;
      notifyListeners();
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) {
        _firestore
            .collection('user')
            .document(user.user.uid)
            .setData({'name': name, 'email': email, 'uid': user.user.uid});
      });
      return true;
    } catch (e) {
      _status = Status.UNAUTHENTICATED;
      notifyListeners();
      print(e.toString());
      return false;
    }
  }

  Future signOut() async {
   await  _auth.signOut();
    _status = Status.UNAUTHENTICATED;
    notifyListeners();
    return Future.delayed(Duration.zero);
  }

  Future<void> _onStateChanged(FirebaseUser user) async {
    if (user == null) {
      _status = Status.UNAUTHENTICATED;
    } else {
      _user = user;
      _status = Status.AUTHENTICATED;
    }
    notifyListeners();
    // Future<void> fetchData() async {
  //   await _firestore
  //       .collection('user')
  //       // .where('uid', isEqualTo:user.uid )
  //       .getDocuments()
  //       .then((data) {
  //     data.documents.forEach((data) {
  //       var uid = data['uid'];
  //       var messages = data['name'];
  //       print(messages);
  //       if (uid == user.uid) {
  //         return null;
  //       }
  //       userName.add(messages);
  //     });
  //   });
  //   notifyListeners();
  }
}
