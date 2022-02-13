import 'package:flutter/material.dart';
import '../../../../utils/constants/dummy_data.dart';
import '../../../../widget/food_container.dart';
import 'package:kartal/kartal.dart';

import '../../model/food_model.dart';

class UnhealtyView extends StatelessWidget {
  const UnhealtyView({Key? key, required this.unhealthyFood}) : super(key: key);

  final List<Food> unhealthyFood;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 2 / 3),
          itemCount: DummyDatas.unhealthyFoodList.length,
          itemBuilder: (BuildContext context, int index) {
            return FoodContainer(
              food: DummyDatas.unhealthyFoodList[index],
              accentColor: Colors.redAccent,
            );
          }),
    );
  }
}
