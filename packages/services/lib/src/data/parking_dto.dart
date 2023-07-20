import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:services/services.dart';

part 'parking_dto.freezed.dart';
part 'parking_dto.g.dart';

@freezed
class ParkingDto with _$ParkingDto {
  const factory ParkingDto({
    required String id,
    required List<FloorDto> floors,
    @Default('') String name,
  }) = _ParkingDto;

  factory ParkingDto.fromJson(Map<String, dynamic> json) => _$ParkingDtoFromJson(json);
}
