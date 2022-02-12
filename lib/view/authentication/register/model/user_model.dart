import 'package:flutter_hackathon_2022/utils/constants/hive_constants.dart';
import 'package:flutter_hackathon_2022/utils/enum/imageEnum.dart';
import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: HiveConstants.USER_TYPE_ID)
class User {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String bio;
  @HiveField(2)
  final String location;
  @HiveField(3)
  final String point;
  @HiveField(4)
  final ImageEnum profileImage;
  @HiveField(5)
  final int dailyCount;

  User(this.name, this.bio, this.location, this.point, this.profileImage,
      {this.dailyCount = 0});
}
