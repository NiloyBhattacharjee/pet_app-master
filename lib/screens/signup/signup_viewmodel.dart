import 'package:flutter/cupertino.dart';

import '../../model/user.dart';
import '../../services/signup/signup_services.dart';

class SignUpViewModel extends ChangeNotifier {
  Map<String, dynamic> puser = {"meals": []};

  void addIndex(String key, dynamic value) => puser[key] = value;

  // User? user;

  // setUser(Map<String, dynamic> puser) => user = User.fromJson(puser);

  SignUpService dataservice = SignUpService();
  Future<void> addUser() async {
    await dataservice.addUser(User.fromJson(puser));
  }
}
