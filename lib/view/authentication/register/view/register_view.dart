import 'package:flutter/material.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../utils/enum/image_enum.dart';
import '../view_model/register_view_model.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

part './subview/registerViewColumn.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);

  final TextEditingController test = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: RegisterViewColumn()
      ),
    );
  }

 
}
