import '../model/base_model.dart';

abstract class ICache<T extends BaseModel> {
  Future<void> initCache();

}