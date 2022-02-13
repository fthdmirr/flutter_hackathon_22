// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileImageEnumAdapter extends TypeAdapter<ProfileImageEnum> {
  @override
  final int typeId = 4;

  @override
  ProfileImageEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ProfileImageEnum.man;
      case 1:
        return ProfileImageEnum.woman;
      default:
        return ProfileImageEnum.man;
    }
  }

  @override
  void write(BinaryWriter writer, ProfileImageEnum obj) {
    switch (obj) {
      case ProfileImageEnum.man:
        writer.writeByte(0);
        break;
      case ProfileImageEnum.woman:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileImageEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GroupImageEnumAdapter extends TypeAdapter<GroupImageEnum> {
  @override
  final int typeId = 5;

  @override
  GroupImageEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return GroupImageEnum.a;
      case 1:
        return GroupImageEnum.b;
      default:
        return GroupImageEnum.a;
    }
  }

  @override
  void write(BinaryWriter writer, GroupImageEnum obj) {
    switch (obj) {
      case GroupImageEnum.a:
        writer.writeByte(0);
        break;
      case GroupImageEnum.b:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupImageEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
