import 'package:flutter/cupertino.dart';

import '../model/user.dart';

class Users with ChangeNotifier {
  List<User> users = [];

  List<User> get user => [...users];
}
