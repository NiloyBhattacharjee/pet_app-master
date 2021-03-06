import 'dart:convert';
import 'dart:ffi';

import '../../model/meal.dart';
import '../rest.dart';
// import '../../models/meal.dart';

class SearchMealService extends Rest {
  // Future<User> addUser(User user) async {
  //   final json = await Rest.post('users', data: user.toJson());
  //   print('done');
  //   return User.fromJson(json);
  // }

  Future<List<Meal?>> searchMealbyTitle(String? title) async {
    List<Meal?> meals = [];
    final json = await Rest.get('meals?title=$title');

    if (json == null || json.length == 0) {
      return meals;
    }
    for (var i = 0; i < json.length; i++) {
      meals.add(Meal.fromJson(json[i]));
    }

    return meals;
  }

  Future<List<Meal?>> searchSuggestion(String? query) async {
    final json = await Rest.get('meals');

    final List meals = json;

    return meals.map((json) => Meal.fromJson(json)).where((element) {
      final nameLower = element.title?.toLowerCase();
      final queryLower = query?.toLowerCase();

      return nameLower!.contains('$query');
    }).toList();
  }

  Future<Meal?> searchMealbyId(String? id) async {
    final json = await Rest.get('meals/$id');

    if (json == null || json.length == 0) {
      return null;
    }

    return Meal.fromJson(json);
  }

  // Future<List<Meal?>> getUserMeals(List<Meal?> meals) async {

  //   List<Meal?> meals = [] ;
  // final json = await Rest.get('meals?id=$title');

  // if (json == null || json.length == 0) {
  //   return meals;
  // }
  // for (var i = 0; i < json.length; i++) {
  //   meals.add(Meal.fromJson(json[i]))  ;
  // }

  // return meals;
  // }

  // Future<Meal?> searchMealbyTitle(String? title) async {

  //   final json = await Rest.get('meals?title=$title');

  //   if (json == null || json.length == 0) {
  //     return null;
  //   }
  //   // for (var i = 0; i < json.length; i++) {
  //   //   meals.add(Meal.fromJson(json[i]))  ;
  //   // }

  //   return Meal.fromJson(json);
  // }
}
