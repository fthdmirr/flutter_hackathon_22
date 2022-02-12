import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/widget/food_container.dart';
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
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return FoodContainer(
              food: unhealthyFood[index],
              accentColor: Colors.redAccent,
            );
          }),
    );
  }
}
