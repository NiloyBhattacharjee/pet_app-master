import '../../model/user.dart';
import '../rest.dart';

class SignUpService extends Rest {
  Future<User> addUser(User user) async {
    final json = await Rest.post('users', data: user.toJson());
    print('done');
    return User.fromJson(json);
  }
}
