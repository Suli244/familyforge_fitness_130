// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminders_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RemcskcnsdcHHHAdapter extends TypeAdapter<RemcskcnsdcHHH> {
  @override
  final int typeId = 0;

  @override
  RemcskcnsdcHHH read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RemcskcnsdcHHH(
      id: fields[0] as String,
      name: fields[1] as String,
      dateTime: fields[2] as DateTime,
      color: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, RemcskcnsdcHHH obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.dateTime)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RemcskcnsdcHHHAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
