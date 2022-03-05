import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class NormalUser {
  NormalUser({@required this.uid});
  final String uid;
}

abstract class AuthBase {
  Stream<NormalUser> get onAuthStateChanged;
  Future<NormalUser> currentUser();
  Future<NormalUser> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  NormalUser _userFromFirebase(User user) {
    if (user == null) {
      return null;
    }
    return NormalUser(uid: user.uid);
  }

  @override
  Stream<NormalUser> get onAuthStateChanged {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  @override
  Future<NormalUser> currentUser() async {
    final user = _firebaseAuth.currentUser;
    return _userFromFirebase(user);
  }

  @override
  Future<NormalUser> signInAnonymously() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
