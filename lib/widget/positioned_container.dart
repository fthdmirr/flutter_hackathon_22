import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
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
    required this.image,required this.onTap,
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
  final String image;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: positionedRight,
        bottom: positionedBottom,
        top: positionedTop,
        left: positionedLeft,
        child: Transform.rotate(
          angle: angle ?? 0,
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: context.dynamicHeight(0.12),
              width: context.dynamicWidth(0.25),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: bottomLeft,
                  topRight: topRight,
                  topLeft: topLeft,
                  bottomRight: bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(image, height: context.dynamicHeight(0.08)),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: AppColors.accentColor),
                  )
                ],
              )),
            ),
          ),
        ));
  }
}
