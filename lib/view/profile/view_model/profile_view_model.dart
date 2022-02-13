import 'package:flutter_hackathon_2022/utils/constants/hive_constants.dart';
import 'package:flutter_hackathon_2022/view/authentication/register/model/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../home/model/group_model.dart';

class ProfileViewModel {
  ProfileViewModel(this.currentUser);

  final User currentUser;

    final _userBox = Hive.box<User>(HiveConstants.USER_BOX);


}
