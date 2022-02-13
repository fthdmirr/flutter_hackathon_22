import 'ICache.dart';
import 'IHive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../model/base_model.dart';

class HiveCache<T extends BaseModel> implements ICache<T>, IHive<T> {
  HiveCache(this.key);

  Box<T>? _box;
  final String key;

  @override
  Future<void> initCache() async {
    if (!(_box?.isOpen ?? false)) {
      _box = await Hive.openBox(key);
    }
  }

  @override
  void registerAdapters<T>(int typeID, TypeAdapter<T> typeAdapter) {
    if (!Hive.isAdapterRegistered(typeID)) {
      Hive.registerAdapter<T>(typeAdapter);
    }
  }
}
