import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/utils/constants/dummy_data.dart';
import 'package:kartal/kartal.dart';

import '../../../../widget/food_container.dart';
import '../../model/food_model.dart';

class HealthyView extends StatelessWidget {
  const HealthyView({Key? key, required this.healthyFood}) : super(key: key);

  final List<Food> healthyFood;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: context.paddingLow,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 3),
            itemCount: DummyDatas.healthyFoodList.length,
            itemBuilder: (BuildContext context, int index) =>
                FoodContainer(food: DummyDatas.healthyFoodList[index])));
  }
}
