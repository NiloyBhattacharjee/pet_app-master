import 'package:flutter/cupertino.dart';
import 'package:pet_app/services/searchmeal/searchmeal_services.dart';
import '../model/meal.dart';

class SearchMealViewModel with ChangeNotifier {
  Meal? meal;
  List<Meal?> meals = [];
  SearchMealService service = SearchMealService();

  // Future<List<Meal?>> searchByTitle(String? title) async {
  //   meals = await service.searchMealbyTitle(title);
  //   notifyListeners();
  //   return meals;
  // }

  Future<List<Meal?>> searchByTitle(String? title) async {
    meals = await service.searchMealbyTitle(title);

    // for (var i = 0; i < entity?.length; i++) {
    //   meals.add(Meal.fromJson(json[i]))  ;
    // }
    // return meals.add(entity)

    notifyListeners();
    return meals;
  }

  Future<List<Meal?>> searchSuggestion(String? query) async {
    meals = await service.searchSuggestion(query);

    // for (var i = 0; i < entity?.length; i++) {
    //   meals.add(Meal.fromJson(json[i]))  ;
    // }
    // return meals.add(entity)

    notifyListeners();
    return meals;
  }

  Future<Meal?> searchById(String? id) async {
    meal = await service.searchMealbyId(id);

    // for (var i = 0; i < entity?.length; i++) {
    //   meals.add(Meal.fromJson(json[i]))  ;
    // }
    // return meals.add(entity)

    notifyListeners();
    return meal;
  }
}
