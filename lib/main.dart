import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/constants/app.dart';

import 'view/food/view/food_view.dart';
import 'view/home/view/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.APP_NAME,
      debugShowCheckedModeBanner: false,
      //theme: GreenTheme.myTheme,
      home: FoodView(),
    );
  }
}
