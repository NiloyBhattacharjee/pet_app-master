import 'dart:convert';

import '../rest.dart';

class UserControllerServices extends Rest {
  Future<void> addMealToUser({dynamic updatedMeals, String? userID}) async {
    Map<String, dynamic> toJson() {
      final data = <String, dynamic>{};
      if (updatedMeals != null) {
        final v = updatedMeals;
        final arr0 = [];
        v!.forEach((v) {
          arr0.add(v);
        });
        data['meals'] = arr0;
      }
      return data;
    }

    await Rest.patch('users/$userID', data: toJson());
  }
}
