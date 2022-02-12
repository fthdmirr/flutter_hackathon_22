import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PositionedContainer extends StatelessWidget {
  const PositionedContainer({
    Key? key,
    this.positionedTop,
    this.positionedBottom,
    this.positionedRight,
    this.positionedLeft,
    this.bottomLeft = Radius.zero,
    this.topRight = Radius.zero,
    this.topLeft = Radius.zero,
    this.bottomRight = Radius.zero,
    this.angle,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final double? positionedTop;
  final double? positionedBottom;
  final double? positionedRight;
  final double? positionedLeft;

  final double? angle;

  final Radius bottomLeft;
  final Radius topRight;
  final Radius topLeft;
  final Radius bottomRight;
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: positionedRight,
        bottom: positionedBottom,
        top: positionedTop,
        left: positionedLeft,
        child: Transform.rotate(
          angle: angle ?? 0,
          child: Container(
            height: context.dynamicHeight(0.12),
            width: context.dynamicWidth(0.25),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                bottomLeft: bottomLeft,
                topRight: topRight,
                topLeft: topLeft,
                bottomRight: bottomRight,
              ),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [icon, Text(title)],
            )),
          ),
        ));
  }
}
