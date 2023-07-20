// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FloorDto _$$_FloorDtoFromJson(Map<String, dynamic> json) => _$_FloorDto(
      slots: (json['slots'] as List<dynamic>)
          .map((e) => SlotDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_FloorDtoToJson(_$_FloorDto instance) =>
    <String, dynamic>{
      'slots': instance.slots,
      'id': instance.id,
      'name': instance.name,
    };
