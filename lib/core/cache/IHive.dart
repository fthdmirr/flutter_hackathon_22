import 'package:hive_flutter/hive_flutter.dart';

import '../model/base_model.dart';

abstract class IHive<T extends BaseModel> {
  void registerAdapters<T>(int typeID,TypeAdapter<T> typeAdapter);
}