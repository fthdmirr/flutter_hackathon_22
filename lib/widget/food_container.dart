import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../core/theme/app_colors.dart';
import '../view/food/model/food_model.dart';

class FoodContainer extends StatelessWidget {
  const FoodContainer({Key? key, required this.food, this.accentColor})
      : super(key: key);

  final Food food;
  final Color? accentColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(context.lowValue),
              color: AppColors.secondaryColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  food.image,
                  fit: BoxFit.cover,
                ),
                Text(
                  food.name,
                  style: TextStyle(
                      color: accentColor ?? AppColors.accentColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(food.description,
                    style: TextStyle(
                      fontSize: 12,
                      color: accentColor ?? AppColors.accentColor,
                      fontWeight: FontWeight.w300,
                    )),
                Expanded(
                  child: Row(
                    children: [
                      Text('Derece: ',
                          style: TextStyle(
                            color: accentColor ?? AppColors.accentColor,
                          )),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: food.star,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: accentColor ?? AppColors.accentColor,
                            size: context.dynamicHeight(0.02),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
