

import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/model/base_model.dart';
import '../../../../utils/constants/hive_constants.dart';
import '../../../../utils/enum/image_enum.dart';
import '../../../home/model/group_model.dart';

part 'user_model.g.dart';

@HiveType(typeId: HiveConstants.USER_TYPE_ID)
class User implements BaseModel{
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String bio;
  @HiveField(2)
  final String location;
  @HiveField(3)
  final int point;
  @HiveField(4)
  final ProfileImageEnum profileImage;
  @HiveField(5)
  final int dailyCount;
  @HiveField(6)
  final List<Group> groups;

  User(this.name, this.bio, this.location, this.point, this.profileImage, this.groups,
      {this.dailyCount = 0});
}


