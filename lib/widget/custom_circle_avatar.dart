import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(radius: context.highValue),
    );
  }
}
