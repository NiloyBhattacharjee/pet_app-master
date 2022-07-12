import 'package:flutter/cupertino.dart';

import '../../model/user.dart';
import '../../services/login/loginservice.dart';

class LoginViewModel with ChangeNotifier {
  User? user;
  bool error = false;
  LoginService service = LoginService();

  Future<User?> login({String? username, String? password}) async {
    user = await service.authenicate(username: username, password: password);
    notifyListeners();
    return user;
  }

  alertMessage() {
    error = true;
    notifyListeners();
  }

  resetError() {
    error = false;
    notifyListeners();
  }
}
