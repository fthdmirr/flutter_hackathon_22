import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/model/base_model.dart';
import '../../../utils/constants/hive_constants.dart';
import '../../authentication/register/model/user_model.dart';

part 'bulletin_model.g.dart';

@HiveType(typeId: HiveConstants.BULETTIN_TYPE_ID)
class Bulletin implements BaseModel {
  @HiveField(0)
  final String stepGoal;
  @HiveField(1)
  final String location;
  @HiveField(2)
  final User user;

  Bulletin(this.stepGoal, this.location, this.user);
}
