// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParkingDto _$$_ParkingDtoFromJson(Map<String, dynamic> json) =>
    _$_ParkingDto(
      id: json['id'] as String,
      floors: (json['floors'] as List<dynamic>)
          .map((e) => FloorDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_ParkingDtoToJson(_$_ParkingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'floors': instance.floors,
      'name': instance.name,
    };
