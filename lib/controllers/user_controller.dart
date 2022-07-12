import 'package:flutter/cupertino.dart';
import 'package:pet_app/services/usercontroller/addpets_services.dart';

import 'package:provider/provider.dart';

import '../model/user.dart';
import '../services/rest.dart';

class UserController with ChangeNotifier {
  UserController._privateConstructor();

  //Singleton intiation
  static final UserController _instance = UserController._privateConstructor();

  // static UserController get instance => _instance;
  factory UserController() {
    return _instance;
  }

  User? _user;
  UserControllerServices userControllerServices = UserControllerServices();

  void setUser(user) {
    _user = user;
    notifyListeners();
  }

  setFullName(String fullname) {
    _user?.setFullname(fullname);
    notifyListeners();
  }

  get user => _user;
}
