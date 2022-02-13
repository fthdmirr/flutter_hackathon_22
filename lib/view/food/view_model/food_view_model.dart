import '../../../core/extension/string_extension.dart';

import '../model/food_model.dart';

class FoodViewModel {
//TODO: datalar eklenecek

  List<Food> _healthyFoodList = [];
  List<Food> _unhealthyFoodList = [];

  List<Food> get healthyFoods => _healthyFoodList;
  List<Food> get unhealthyFoods => _unhealthyFoodList;


}
