import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/model/user.dart' as model;
import 'package:pet_app/resources/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //signup User
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String petname,
    required Uint8List file,
  }) async {
    String res = "Error Occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          petname.isNotEmpty ||
          // ignore: unnecessary_null_comparison
          file != null) {
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print(cred.user!.uid);

        String photoUrl = await StorageMethods()
            .uploadImageToStorage('profile picture', file, false);

        //add user to our Database
        // model.User user = model.User(
        //   username: username,
        //   uid: cred.user!.uid,
        //   email: email,
        //   petname: petname,
        //   petid: petname,
        //   photoUrl: photoUrl,
        // );

        await _firestore.collection('users').doc(cred.user!.uid).set({
          'username': username,
          'uid': cred.user!.uid,
          'email': email,
          'pet_name': petname,
          'pet_id ': [],
          'photoUrl': photoUrl,
        });
        res = "success";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

//login user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = 'Error has occured';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        _auth.signInWithEmailAndPassword(email: email, password: password);
        res = "success";
      } else {
        res = "Please enter all fields";
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        if (e.code == 'wrong-password') {}
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
