import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/cache/ICache.dart';
import '../../../../utils/constants/dummy_data.dart';
import '../../../../utils/enum/image_enum.dart';
import '../../../home/view/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../utils/constants/hive_constants.dart';
import '../../../../widget/bottom_navigation_bar.dart';
import '../../../home/model/bulletin_model.dart';
import '../../../home/model/group_model.dart';
import '../model/user_model.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterViewModel(this.cache);

  final ICache<User> cache;
  User? _currentUser;
  User? get currentUser => _currentUser;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  ProfileImageEnum image = ProfileImageEnum.man;
  bool womanDismised = false;
  bool manDismissed = false;

  final _userBox = Hive.box<User>(HiveConstants.USER_BOX);
  final _bulletinBox = Hive.box<Bulletin>(HiveConstants.BULETTIN_BOX);
  final _groupBox = Hive.box<Group>(HiveConstants.GROUP_BOX);

  changeGender(ProfileImageEnum profileImage) {
    if (profileImage == ProfileImageEnum.man) {
      womanDismised = !womanDismised;
      image = ProfileImageEnum.man;
    } else {
      manDismissed = !manDismissed;
      image = ProfileImageEnum.woman;
    }
    notifyListeners();
  }

  Future<void> createUser(BuildContext context) async {
    final user = User(
      nameController.text,
      bioController.text,
      locationController.text,
      0,
      image,
      [],
    );
    _currentUser = user;
    await _userBox.add(user);
    await _addDummyDatas();

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigation()),
        (route) => false);
  }

  _addDummyDatas() async {
    await _bulletinBox.addAll(DummyDatas.bulletinList.toList());
    await _groupBox.addAll(DummyDatas.groupList);
  }
}
