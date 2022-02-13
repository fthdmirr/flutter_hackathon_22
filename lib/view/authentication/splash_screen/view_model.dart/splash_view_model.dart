import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2022/view/authentication/register/model/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../utils/constants/hive_constants.dart';
import '../../../../widget/bottom_navigation_bar.dart';
import '../../register/view/register_view.dart';

class SplashViewModel {
  SplashViewModel(this.context);

  final BuildContext context;

  final _userBox = Hive.box<User>(HiveConstants.USER_BOX);
  late final User? _currentUser;

  Future<void> get navigateToMainScreen async {
    _currentUser = _userBox.get('currentUser');

    await Future.delayed(Duration(seconds: 3));
    if (_userBox.values.isNotEmpty || _currentUser != null) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigation()),
          (route) => false);
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => RegisterView()),
          (route) => false);
    }
  }
}
