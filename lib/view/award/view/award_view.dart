import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/core/theme/app_colors.dart';
import 'package:kartal/kartal.dart';

import '../../../widget/positioned_container.dart';

class AwardView extends StatelessWidget {
  const AwardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('Awards')),
      body: Stack(
        children: [
          PositionedContainer(
            positionedTop: context.dynamicHeight(0.23),
            positionedLeft: context.dynamicWidth(0.25),
            bottomLeft: context.normalRadius,
            topRight: context.normalRadius,
            title: 'Elektronik Eşya',
            icon: Icon(Icons.electric_bike),
          ),
          PositionedContainer(
            angle: math.pi / 45,
            positionedTop: context.dynamicHeight(0.36),
            positionedLeft: context.dynamicWidth(0.22),
            topLeft: context.normalRadius,
            bottomRight: context.normalRadius,
            title: 'Elektronik Eşya',
            icon: Icon(Icons.electric_bike),
          ),
          PositionedContainer(
            positionedTop: context.dynamicHeight(0.23),
            positionedRight: context.dynamicWidth(0.23),
            bottomRight: context.normalRadius,
            topLeft: context.normalRadius,
            title: 'Elektronik Eşya',
            icon: Icon(Icons.electric_bike),
          ),
          PositionedContainer(
            angle: -math.pi / 45,
            positionedTop: context.dynamicHeight(0.36),
            positionedRight: context.dynamicWidth(0.22),
            topRight: context.normalRadius,
            bottomLeft: context.normalRadius,
            title: 'Elektronik Eşya',
            icon: Icon(Icons.electric_bike),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: context.mediumValue,
                backgroundColor: Colors.yellow,
              ),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: context.dynamicWidth(0.05),
                    height: context.dynamicHeight(0.5),
                    color: AppColors.green,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
