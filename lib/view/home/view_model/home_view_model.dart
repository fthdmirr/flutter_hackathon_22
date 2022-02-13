import 'dart:math';

import 'package:flutter/cupertino.dart';
import '../../../core/cache/ICache.dart';
import '../../../core/extension/string_extension.dart';
import '../../../utils/constants/hive_constants.dart';
import '../../../utils/enum/image_enum.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

import '../../authentication/register/model/user_model.dart';
import '../../authentication/register/view_model/register_view_model.dart';
import '../model/bulletin_model.dart';
import '../model/group_model.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this.cache);

  final ICache<Bulletin> cache;

  TextEditingController stepController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController groupNameController = TextEditingController();
  TextEditingController peopleCountController = TextEditingController();
  final _bulletinBox = Hive.box<Bulletin>(HiveConstants.BULETTIN_BOX);
  final _groupBox = Hive.box<Group>(HiveConstants.GROUP_BOX);

  Future<void> addBulletin(BuildContext context) async {
    await _bulletinBox.add(Bulletin(
        stepController.text,
        locationController.text,
        context.read<RegisterViewModel>().currentUser ??
            User('Fatih', 'Selam', 'Ankara', 100, ProfileImageEnum.man, [])));
  }

  Future<void> addGroup(BuildContext context) async {
    final currentUser = context.read<RegisterViewModel>().currentUser;
    await _groupBox.add(Group(
        [currentUser!], groupNameController.text, 'group${math.Random().nextInt(3)}'.toJpg, locationController.text,peopleCountController.text));
  }
}
