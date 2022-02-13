import '../constants/hive_constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'image_enum.g.dart';

@HiveType(typeId: HiveConstants.PROFILE_ENUM_TYPE_ID)
enum ProfileImageEnum {
  @HiveField(0)
  man,
  @HiveField(1)
  woman,
}

@HiveType(typeId: HiveConstants.GROUP_ENUM_TYPE_ID)
enum GroupImageEnum {
  @HiveField(0)
  a,
  @HiveField(1)
  b,
}
