// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulletin_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BulletinAdapter extends TypeAdapter<Bulletin> {
  @override
  final int typeId = 3;

  @override
  Bulletin read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bulletin(
      fields[0] as String,
      fields[1] as String,
      fields[2] as User,
    );
  }

  @override
  void write(BinaryWriter writer, Bulletin obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.stepGoal)
      ..writeByte(1)
      ..write(obj.location)
      ..writeByte(2)
      ..write(obj.user);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BulletinAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
