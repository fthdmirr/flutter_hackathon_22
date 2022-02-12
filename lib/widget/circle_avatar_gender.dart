import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CircleAvatarGender extends StatelessWidget {
  const CircleAvatarGender({Key? key,required this.image, this.radius}) : super(key: key);

  final String image;
  final double? radius;
  @override
  Widget build(BuildContext context) {

    return CircleAvatar(
      radius: radius ?? context.dynamicHeight(0.03),
      backgroundColor: Colors.transparent,
      child: ClipOval(
        child: Image.asset(image),
      ),
    );
  }
}
