import 'package:foods_app/data/models/meal_model.dart';

abstract class MealDataSource {
  Future<MealModel> getRandomMeal();

  Future<MealModel> getMealById({required int id});

  Future<List<MealModel>> getMealByFirstLetter({required String firstLetter});

  Future<MealModel> getMealByName({required String name});
}
