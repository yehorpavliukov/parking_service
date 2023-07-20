import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:services/services.dart';

part 'floor_dto.g.dart';
part 'floor_dto.freezed.dart';

@freezed
class FloorDto with _$FloorDto {
  const factory FloorDto({
    required List<SlotDto> slots,
    required String id,
    @Default('') String name,
  }) = _FloorDto;

  factory FloorDto.fromJson(Map<String, dynamic> json) => _$FloorDtoFromJson(json);
}
