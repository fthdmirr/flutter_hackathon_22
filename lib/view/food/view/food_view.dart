import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:flutter_hackathon_2022/view/food/view_model/food_view_model.dart';

import 'subview/healthy_view.dart';
import 'subview/unhealty_view.dart';

class FoodView extends StatefulWidget {
  @override
  State<FoodView> createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  final FoodViewModel food_view_model = FoodViewModel();

  @override
  void initState() {
    super.initState();

    food_view_model.initFoodLists;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: foodAppBar,
        body: TabBarView(children: [
          HealthyView(healthyFood: food_view_model.healthyFoods),
          UnhealtyView(unhealthyFood: food_view_model.unhealthyFoods)
        ]),
      ),
    );
  }

  AppBar get foodAppBar {
    return AppBar(
      backgroundColor: AppColors.accentColor,
      bottom: TabBar(
        tabs: [
          Tab(text: 'Sağlıklı'),
          Tab(text: 'Zararlı'),
        ],
      ),
      title: const Text('Yemek'),
    );
  }
}
