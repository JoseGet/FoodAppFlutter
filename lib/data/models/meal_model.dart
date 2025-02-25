class MealModel {
  final int? id;
  final String? name;
  final String? category;
  final String? area;
  final String? instructions;
  final String? image;
  final double? value;

  const MealModel({
    this.id,
    this.name,
    this.category,
    this.area,
    this.instructions,
    this.image,
    this.value,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'idMeal': int idMeal,
        'strMeal': String strMeal,
        'strCategory': String strCategory,
        'strArea': String strArea,
        'strInstructions': String strInstructions,
        'strMealThumb': String strMealThumb,
      } =>
        MealModel(
          id: idMeal,
          name: strMeal,
          category: strCategory,
          area: strArea,
          instructions: strInstructions,
          image: strMealThumb,
        ),
      _ => throw const FormatException('Failed to load meal.'),
    };
  }
}
