
import '../../../core/model/base_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../utils/constants/hive_constants.dart';
import '../../authentication/register/model/user_model.dart';

part 'group_model.g.dart';

@HiveType(typeId: HiveConstants.GROUP_TYPE_ID)
class Group implements BaseModel{
  @HiveField(0)
  final List<User> users;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String location;
  @HiveField(3)
  final String profileImage;
  @HiveField(4)
  final String groupCapacity;

  Group(this.users, this.name, this.profileImage, this.location, this.groupCapacity);

}