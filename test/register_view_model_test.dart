import 'package:flutter_hackathon_2022/core/cache/ICache.dart';
import 'package:flutter_hackathon_2022/core/cache/hive_cache.dart';
import 'package:flutter_hackathon_2022/utils/constants/hive_constants.dart';
import 'package:flutter_hackathon_2022/utils/enum/image_enum.dart';
import 'package:flutter_hackathon_2022/view/authentication/register/model/user_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() async {});

  test('add data to hive', () async {
/*     HiveCache<User> cache = await HiveCache<User>(HiveConstants.USER_BOX)
      ..registerAdapters<User>(HiveConstants.USER_TYPE_ID, UserAdapter())
      ..initCache();

    User user = await cache
        .saveData(User('fatih', 'sa', 'angara', 0, ProfileImageEnum.man, []));

    expect(user, isNotNull); */
  });
}
