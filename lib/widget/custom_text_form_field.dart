import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final Icon? icon;
  final TextEditingController textController;
  final int? maxLines;

  const CustomTextFormField({
    Key? key,
    required this.textController,
    required this.label,
    this.icon,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Container(
            padding: context.paddingLow,
            child: icon ?? context.emptySizedHeightBoxHigh),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.lowValue),
        ),
      ),
    );
  }
}
