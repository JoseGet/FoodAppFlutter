import 'package:dio/dio.dart';
import 'package:foods_app/data/datasources/meal_data_source.dart';
import 'package:foods_app/data/models/meal_model.dart';

class MealDataSourceImpl implements MealDataSource {
  final Dio _dio;
  final baseURL = 'https://www.themealdb.com/api/json/v1/1';

  const MealDataSourceImpl(this._dio);

  @override
  Future<List<MealModel>> getMealByFirstLetter({required String firstLetter}) {
    // TODO: implement getMealByFirstLetter
    throw UnimplementedError();
  }

  @override
  Future<MealModel> getMealById({required int id}) {
    // TODO: implement getMealById
    throw UnimplementedError();
  }

  @override
  Future<MealModel> getMealByName({required String name}) async {
    try {
      Response response;
      response = await _dio.get('$baseURL/search.php?s=$name');
      print(response.data.toString());
      final model = MealModel.fromJson(response.data as Map<String, dynamic>);
      return model;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MealModel> getRandomMeal() async {
    try {
      Response response;
      response = await _dio.get('$baseURL/randomselection.php');
      final model = MealModel.fromJson(response.data as Map<String, dynamic>);
      return model;
    } catch (e) {
      rethrow;
    }
  }
}
