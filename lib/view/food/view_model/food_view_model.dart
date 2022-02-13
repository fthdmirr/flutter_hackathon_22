import '../../../core/extension/string_extension.dart';

import '../model/food_model.dart';

class FoodViewModel {
//TODO: datalar eklenecek

  List<Food> _healthyFoodList = [];
  List<Food> _unhealthyFoodList = [];

  List<Food> get healthyFoods => _healthyFoodList;
  List<Food> get unhealthyFoods => _unhealthyFoodList;

  void get initFoodLists {
    _healthyFoodList = List.generate(
        10,
        (index) => Food(
              'Avokado',
              'vegetables'.toJpg,
              'Avokado, içerdiği vitaminler ve antioksidanlar nedeniyle sağlık için çok faydalı bir meyvedir.',
              5,
            ));
    _unhealthyFoodList = List.generate(
        10,
        (index) => Food(
              'Hamburger',
              'hamburger'.toJpg,
              'Sık tüketildiğinde başta kalp-damar sağlığı olmak üzere sağlık açısından risk yaratabilmektedir.',
              5,
            ));
  }
}
